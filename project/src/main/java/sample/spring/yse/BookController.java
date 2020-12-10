package sample.spring.yse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public ModelAndView create() {
	    return new ModelAndView("book/create");
	}
}
