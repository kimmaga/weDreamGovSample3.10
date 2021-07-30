package egovframework.com.cmm.web;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovProperties;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.uat.uia.service.EgovLoginService;

@Controller
public class EgovComIndexController implements ApplicationContextAware, InitializingBean {

	private ApplicationContext applicationContext;

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovComIndexController.class);

	public void afterPropertiesSet() throws Exception {
	}

	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext = applicationContext;

		LOGGER.info("EgovComIndexController setApplicationContext method has called!");
	}

	/** EgovLoginService */
	@Resource(name = "loginService")
	private EgovLoginService loginService;


/*	
	
	@RequestMapping("/index.do")
	public String index(ModelMap model) {
		// return "egovframework/com/cmm/EgovUnitMain";
		return "lcms/template/LcmsUnitMain";
		// return "index";
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

		/*
		 * Map<Integer, IncludedCompInfoVO> map = new TreeMap<Integer,
		 * IncludedCompInfoVO>(); RequestMapping rmAnnotation; IncludedInfo annotation;
		 * IncludedCompInfoVO zooVO;
		 * 
		 * 
		 * EgovLoginController가 AOP Proxy되는 바람에 클래스를 reflection으로 가져올 수 없음
		 * 
		 * try { Class<?> loginController =
		 * Class.forName("egovframework.com.uat.uia.web.EgovLoginController"); Method[]
		 * methods = loginController.getMethods(); for (int i = 0; i < methods.length;
		 * i++) { annotation = methods[i].getAnnotation(IncludedInfo.class);
		 * 
		 * if (annotation != null) { LOGGER.debug("Found @IncludedInfo Method : {}",
		 * methods[i]); zooVO = new IncludedCompInfoVO();
		 * zooVO.setName(annotation.name()); zooVO.setOrder(annotation.order());
		 * zooVO.setGid(annotation.gid());
		 * 
		 * rmAnnotation = methods[i].getAnnotation(RequestMapping.class); if
		 * ("".equals(annotation.listUrl()) && rmAnnotation != null) {
		 * zooVO.setListUrl(rmAnnotation.value()[0]); } else {
		 * zooVO.setListUrl(annotation.listUrl()); } map.put(zooVO.getOrder(), zooVO); }
		 * } } catch (ClassNotFoundException e) {
		 * LOGGER.error("No egovframework.com.uat.uia.web.EgovLoginController!!"); }
		 * 여기까지 AOP Proxy로 인한 코드
		 * 
		 * @Controller Annotation 처리된 클래스를 모두 찾는다. Map<String, Object> myZoos =
		 * applicationContext.getBeansWithAnnotation(Controller.class);
		 * LOGGER.debug("How many Controllers : ", myZoos.size()); for (final Object
		 * myZoo : myZoos.values()) { Class<? extends Object> zooClass =
		 * myZoo.getClass();
		 * 
		 * Method[] methods = zooClass.getMethods();
		 * LOGGER.debug("Controller Detected {}", zooClass); for (int i = 0; i <
		 * methods.length; i++) { annotation =
		 * methods[i].getAnnotation(IncludedInfo.class);
		 * 
		 * if (annotation != null) { //LOG.debug("Found @IncludedInfo Method : " +
		 * methods[i] ); zooVO = new IncludedCompInfoVO();
		 * zooVO.setName(annotation.name()); zooVO.setOrder(annotation.order());
		 * zooVO.setGid(annotation.gid());
		 * 
		 * 목록형 조회를 위한 url 매핑은 @IncludedInfo나 @RequestMapping에서 가져온다
		 * 
		 * rmAnnotation = methods[i].getAnnotation(RequestMapping.class); if
		 * ("".equals(annotation.listUrl())) {
		 * zooVO.setListUrl(rmAnnotation.value()[0]); } else {
		 * zooVO.setListUrl(annotation.listUrl()); }
		 * 
		 * map.put(zooVO.getOrder(), zooVO); } } }
		 * 
		 * model.addAttribute("resultList", map.values());
		 * 
		 * LOGGER.debug("EgovComIndexController index is called ");
		 */



	// context-security.xml 설정
	// csrf="true"인 경우 csrf Token이 없는경우 이동하는 페이지
	// csrfAccessDeniedUrl="/egovCSRFAccessDenied.do"
	@RequestMapping("/egovCSRFAccessDenied.do")
	public String egovCSRFAccessDenied() {
		return "egovframework/com/cmm/error/csrfAccessDenied";
	}
}
