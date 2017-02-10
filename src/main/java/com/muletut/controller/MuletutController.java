package com.muletut.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.io.SAXEventRecorder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.muletut.dto.SearchForm;
import com.muletut.exceptions.MuletutException;
import com.muletut.service.MuletutService;

@Controller
public class MuletutController {
	@Autowired
	MuletutService muletutService;

	/**
	 * Method to get all menu items
	 * 
	 * @param model
	 * @return String
	 */
	@RequestMapping("/index")
	public String getMenu(ModelMap model, HttpServletRequest request) {
		ArrayList<String> menuItems;
		try {
			SearchForm searchForm = new SearchForm();
			if (muletutService.addMenuItems()) {
				menuItems = muletutService.getMenu();
				model.addAttribute("search", searchForm);
				model.addAttribute("menuItems", menuItems);
				return "index";
			} else {
				return "index";
			}
		} catch (MuletutException e) {
			e.printStackTrace();
			return "index";
		}

	}

	@RequestMapping("/index.html")
	public String getMenuHTML(ModelMap model, HttpServletRequest request) {
		ArrayList<String> menuItems;
		try {
			SearchForm searchForm = new SearchForm();
			if (muletutService.addMenuItems()) {
				menuItems = muletutService.getMenu();
				model.addAttribute("search", searchForm);
				model.addAttribute("menuItems", menuItems);
				return "index";
			} else {
				return "index";
			}
		} catch (MuletutException e) {
			e.printStackTrace();
			return "index";
		}

	}

	/**
	 * Method to get tutorial
	 * 
	 * @param request
	 * @return String
	 */
	@ResponseBody
	@RequestMapping("/tut")
	public String getTutData(HttpServletRequest request) {
		String title = request.getParameter("title");
		String fileData = null;
		try {
			fileData = muletutService.readFile(title);
		} catch (MuletutException e) {
			e.printStackTrace();
		}
		return fileData;

	}

	@RequestMapping("/references.html")
	public String getRefer() {

		return "references";
	}

	/**
	 * Method to fetch cloudhub page and cloud menu items
	 * @return
	 */
	@RequestMapping("/cloudhub.html")
	public String getCloud(ModelMap model, HttpServletRequest request) {
		ArrayList<String> menuItems;
		try {
			SearchForm searchForm = new SearchForm();
			if (muletutService.addMenuItems()) {
				menuItems = muletutService.getMenu();
				model.addAttribute("search", searchForm);
				model.addAttribute("menuItems", menuItems);
				return "cloudhub";
			} else {
				return "cloudhub";
			}
		} catch (MuletutException e) {
			e.printStackTrace();
			return "cloudhub";
		}
	}
	/**
	 * Method to search
	 * 
	 * @param searchForm
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/search")
	public void search(@ModelAttribute("search") SearchForm searchForm) {
		String searchString = searchForm.getSearchString();
		System.out.println(searchString);
		muletutService.search(searchString);

	}
}
