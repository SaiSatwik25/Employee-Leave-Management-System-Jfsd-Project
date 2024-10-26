package com.elm.sdp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerCl {

	@GetMapping("index")
    public ModelAndView demo()
    {
   	 ModelAndView mv = new ModelAndView("index");
   	 return mv;
    }
	
	@GetMapping("about")
    public ModelAndView about()
    {
   	 ModelAndView mv = new ModelAndView("about");
   	 return mv;
    }
	@GetMapping("contact")
    public ModelAndView contact()
    {
   	 ModelAndView mv = new ModelAndView("contact");
   	 return mv;
    }
	
	@GetMapping("feature")
    public ModelAndView feature()
    {
   	 ModelAndView mv = new ModelAndView("feature");
   	 return mv;
    }
	@GetMapping("role")
    public ModelAndView role()
    {
   	 ModelAndView mv = new ModelAndView("Roles");
   	 return mv;
    }
	
	
}
