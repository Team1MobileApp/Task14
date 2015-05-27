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
					
										
					String name = form.getName();
					
					String age = form.getAge();
					String gender = form.getGender();
					String happy = form.getHappy();
					String location = form.getLocation();
					String description = form.getDescription();
					
					ArrayList<String> info = new ArrayList<String>();
					
					info.add(name);
					info.add(age);
					info.add(gender);
					info.add(happy);
					info.add(location);
					info.add(description);	
					
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
	
	private void generateXMLFile(String path, ArrayList<String> info) {
	    try {
	    		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	        DocumentBuilder db = dbf.newDocumentBuilder();
	        Document dom = db.newDocument();
	        
	        ArrayList<String> list = new ArrayList<String>();
			list.add("name");
			list.add("happy");
			list.add("age");
			list.add("gender");
			list.add("description");
			
	        // create element1
	        Element root = dom.createElement("root");
	        dom.appendChild(root);
	        
	        for (int i = 0; i < list.size(); i++) {
	        		Element element = dom.createElement(list.get(i));
		        root.appendChild(element);	 
		        element.appendChild(dom.createTextNode(info.get(i)));
	        }
	        
	        try {
	        	Transformer tf = TransformerFactory.newInstance().newTransformer();
	        	tf.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
	        	tf.setOutputProperty(OutputKeys.INDENT, "yes");
	        Writer out = new StringWriter();
	        tf.transform(new DOMSource(dom), new StreamResult(new FileOutputStream(path)));
	           
	        } catch (TransformerException te) {
	            System.out.println(te.getMessage());
	        } catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
	    } catch (ParserConfigurationException pce) {
	        System.out.println("UsersXML: Error trying to instantiate DocumentBuilder " + pce);
	    }
	}
}