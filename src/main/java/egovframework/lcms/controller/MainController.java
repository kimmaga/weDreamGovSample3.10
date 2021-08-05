package egovframework.lcms.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.lcms.util.ApiConfig;
import egovframework.lcms.util.HttpClientUtil;

@Controller
public class MainController {
	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	ApiConfig apiConfig;
	
	@RequestMapping("/index.do")
	public String index(ModelMap model) {
		// return "egovframework/com/cmm/EgovUnitMain";
		LOGGER.info("1313");
		LOGGER.info("====================================================================================");
		HttpClientUtil hu = new HttpClientUtil();
		WeakHashMap<String,Object> pMap = new WeakHashMap<>();
		hu.getToken(pMap);
		
		LOGGER.info("====================================================================================");
		Map <String,String> testMap = new HashMap<>();
		
		testMap.put("key", "value");

		return "LcmsUnitMain.tiles";
		// return "index";
	}
	
	@RequestMapping("/join.do")
	public String LcmsJoinMember(ModelMap model) {
		return "LcmsJoinMember.tiles";
	}
	
	@RequestMapping("/EgovTop.do")
	public String top() {
		return "lcms/template/LcmsUnitTop";
	}

	@RequestMapping("/EgovBottom.do")
	public String bottom() {
		return "lcms/template/LcmsUnitBottom";
	}
	
	

	@RequestMapping("/EgovLeft.do")
	public String setLeftMenu(ModelMap model) {
		return "lcms/template/LcmsUnitLeft";
	}

	@RequestMapping("/EgovContent.do")
	public String setContent(ModelMap model) throws Exception {
		return "egovframework/com/cmm/EgovUnitContent";
	}
	
	
	@RequestMapping("/invi_apply.do")
	public String LcmsIndividualEnrollmentApply(ModelMap model) {
		return "lcms/views/LcmsIndividualEnrollmentApply.tiles";
	}
	
	@RequestMapping("/invi_status.do")
	public String LcmsIndividualEnrollmentApplyStatus(ModelMap model) {
		return "lcms/views/LcmsIndividualEnrollmentApplyStatus.tiles";
	}

	@RequestMapping("/dash.do")
	public String dash(ModelMap model) {
		return "lcms/views/dash.tiles";
	}
	
	@RequestMapping("/corp_apply.do")
	public String corp_apply(ModelMap model) {
		return "lcms/views/corp_apply.tiles";
	}
	
	@RequestMapping("/corp_apply2.do")
	public String corp_apply2(ModelMap model) {
		return "lcms/views/corp_apply2.tiles";
	}
	
	@RequestMapping("/corp_apply3.do")
	public String corp_apply3(ModelMap model) {
		return "lcms/views/corp_apply3.tiles";
	}
	
	@RequestMapping("/corp_apply4.do")
	public String corp_apply4(ModelMap model) {
		return "lcms/views/corp_apply4.tiles";
	}
	
	@RequestMapping("/corp_apply5.do")
	public String corp_apply5(ModelMap model) {
		return "lcms/views/corp_apply5.tiles";
	}
	
	@RequestMapping("/corp_simsa.do")
	public String corp_simsa(ModelMap model) {
		return "lcms/views/corp_simsa.tiles";
	}
	
	@RequestMapping("/invi_simsa.do")
	public String invi_simsa(ModelMap model) {
		return "lcms/views/invi_simsa.tiles";
	}
	
}
