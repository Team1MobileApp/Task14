package controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import javax.xml.parsers.DocumentBuilderFactory;

import model.Model;

import org.genericdao.RollbackException;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;

import org.xml.sax.*;
import org.w3c.dom.*;

import formbeans.SearchForm;

public class ChooseAction extends Action {
	private FormBeanFactory<SearchForm> formBeanFactory = FormBeanFactory
			.getInstance(SearchForm.class);

	// constructor
	public ChooseAction(Model model) {
		
	}

	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");

	// get action name
	public String getName() {
		return "choose.do";
	}

	// return next page name
	public String perform(HttpServletRequest request, HttpServletResponse response) {
		if (request.getParameter("action") != null) {
				SearchForm form;
				try {
					form = formBeanFactory.create(request);
				
				request.setAttribute("form", form);

				// if no parameters passed in
				if (!form.isPresent()) {
					System.out.println("***********form is not present");
					return "index.jsp";
				}
				
				ArrayList<String> info = new ArrayList<String>();
					
				info.add(form.getCompany());
				info.add(form.getEntity());
				info.add(form.getEntities());
				info.add(form.getJoint());
				info.add(form.getPhone());
				info.add(form.getEmail());	
				info.add(form.getWeb());
				info.add(form.getAddress());
				info.add(form.getCity());
				info.add(form.getZipcode());
				info.add(form.getState());
				info.add(form.getWhatinfo0());
				info.add(form.getWhatinfo1());
				info.add(form.getWhatinfo2());
				info.add(form.getWhatinfo3());
				info.add(form.getWhatinfo4());
				info.add(form.getWhatinfo5());
				info.add(form.getWhatinfo6());	
				System.out.println(info);
				HttpSession session = request.getSession();
				session.setAttribute("info", info);
				
				} catch (FormBeanException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            String action = request.getParameter("action");
            if (action.equals("outputXML")) {
            		return "OutputXML.do";
            } else if (action.equals("downloadFull")) {
                 return "download.do";
            } else if (action.equals("downloadHtml")) {
            		return "downloadHtml.do";
            }
			return "index.jsp";
		}
		return "index.jsp";
	}
}