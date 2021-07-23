package lcms.controller.main;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovComponentChecker;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.annotation.IncludedInfo;
import egovframework.com.cmm.config.EgovLoginConfig;
import egovframework.com.uat.uia.service.EgovLoginService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class MainController {
	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);
	@Resource(name = "egovLoginConfig")
	EgovLoginConfig egovLoginConfig;
	/** EgovLoginService */
	@Resource(name = "loginService")
	private EgovLoginService loginService;

	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;


	@RequestMapping("/invi_apply.do")
	public String LcmsIndividualEnrollmentApply(ModelMap model) {
		return "lcms/views/LcmsIndividualEnrollmentApply.tiles";
	}
	
	@RequestMapping("/invi_status.do")
	public String LcmsIndividualEnrollmentApplyStatus(ModelMap model) {
		return "lcms/views/LcmsIndividualEnrollmentApplyStatus.tiles";
	}

	@RequestMapping("/join.do")
	public String LcmsJoinMember(ModelMap model) {
		return "lcms/views/LcmsJoinMember.tiles";
	}
	String loginPage= "lcms/views/EgovLoginUsr.tiles";
	@IncludedInfo(name = "로그인", listUrl = "/uat/uia/egovLoginUsr.do", order = 10, gid = 10)
	@RequestMapping(value = "/uat/uia/egovLoginUsr.do")
	public String loginUsrView(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		LOGGER.info("/uat/uia/egovLoginUsr Contoller In In In");
		if (EgovComponentChecker.hasComponent("mberManageService")) {
			model.addAttribute("useMemberManage", "true");
		}
				
		//권한체크시 에러 페이지 이동
		String auth_error =  request.getParameter("auth_error") == null ? "" : (String)request.getParameter("auth_error");
		if(auth_error != null && auth_error.equals("1")){
			return "egovframework/com/cmm/error/accessDenied";
		}

		String message = (String)request.getParameter("loginMessage");
		if (message!=null) model.addAttribute("loginMessage", message);
		
		return loginPage;
	}
	/**
	 * 일반(세션) 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/uat/uia/actionLogin.do")
	public String actionLogin(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request, ModelMap model) throws Exception {

		// 1. 로그인인증제한 활성화시 
		if( egovLoginConfig.isLock()){
		    Map<?,?> mapLockUserInfo = (EgovMap)loginService.selectLoginIncorrect(loginVO);
		    if(mapLockUserInfo != null){			
				//2.1 로그인인증제한 처리
				String sLoginIncorrectCode = loginService.processLoginIncorrect(loginVO, mapLockUserInfo);
				if(!sLoginIncorrectCode.equals("E")){
					if(sLoginIncorrectCode.equals("L")){
						model.addAttribute("loginMessage", egovMessageSource.getMessageArgs("fail.common.loginIncorrect", new Object[] {egovLoginConfig.getLockCount(),request.getLocale()}));
					}else if(sLoginIncorrectCode.equals("C")){
						model.addAttribute("loginMessage", egovMessageSource.getMessage("fail.common.login",request.getLocale()));
					}
					return loginPage;
				}
		    }else{
		    	model.addAttribute("loginMessage", egovMessageSource.getMessage("fail.common.login",request.getLocale()));
		    	return loginPage;
		    }
		}
		
		// 2. 로그인 처리
		LoginVO resultVO = loginService.actionLogin(loginVO);
		
		// 3. 일반 로그인 처리
		if (resultVO != null && resultVO.getId() != null && !resultVO.getId().equals("")) {

			// 3-1. 로그인 정보를 세션에 저장
			request.getSession().setAttribute("loginVO", resultVO);
			// 2019.10.01 로그인 인증세션 추가
			request.getSession().setAttribute("accessUser", resultVO.getUserSe().concat(resultVO.getId()));

			return "redirect:/uat/uia/actionMain.do";

		} else {
			model.addAttribute("loginMessage", egovMessageSource.getMessage("fail.common.login",request.getLocale()));
			return loginPage;
		}
	}
}
