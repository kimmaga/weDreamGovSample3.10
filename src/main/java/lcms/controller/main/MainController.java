package lcms.controller.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping("/LcmsIndividualEnrollmentApply.do")
	public String LcmsIndividualEnrollmentApply(ModelMap model) {
		return "lcms/views/LcmsIndividualEnrollmentApply.tiles";
	}
	
	@RequestMapping("/LcmsIndividualEnrollmentApplyStatus.do")
	public String LcmsIndividualEnrollmentApplyStatus(ModelMap model) {
		return "lcms/views/LcmsIndividualEnrollmentApplyStatus.tiles";
	}

}
