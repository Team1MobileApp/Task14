package controller;

import java.io.File;
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

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

public class OutputXMLAction extends Action {
	private FormBeanFactory<SearchForm> formBeanFactory = FormBeanFactory
			.getInstance(SearchForm.class);
	ServletConfig config;
	// constructor
	public OutputXMLAction(Model model) {
		this.config = model.config;
	}

	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");

	// get action name
	public String getName() {
		return "OutputXML.do";
	}

	// return next page name
	public String perform(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ArrayList<String> info = (ArrayList<String>) session.getAttribute("info");	
		
		System.out.println("***********" + config.getServletContext().getRealPath(""));
		String path = config.getServletContext().getRealPath("") + "/Output/XMLFile.xml";
		generateXMLFile(path, info);
		return "index.jsp";		
	}
	
	private void generateXMLFile(String path, ArrayList<String> info) {
	    try {
	    		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	        DocumentBuilder db = dbf.newDocumentBuilder();
	        Document dom = db.newDocument();
	        
	        ArrayList<String> list = new ArrayList<String>();
			list.add("company");
			list.add("entity");
			list.add("entities");
			list.add("joint");
			list.add("phone");
			list.add("email");
			list.add("web");
			list.add("address");
			list.add("city");
			list.add("zipcode");
			list.add("state");
			list.add("whatinfo0");
			list.add("whatinfo1");
			list.add("whatinfo2");
			list.add("whatinfo3");
			list.add("whatinfo4");
			list.add("whatinfo5");
			list.add("whatinfo6");
			
	        // create element1
	        Element root = dom.createElement("root");
	        dom.appendChild(root);
	        
	        for (int i = 0; i < list.size(); i++) {
	        		Element element = dom.createElement(list.get(i));
		        root.appendChild(element);	 
		        if (info.get(i) == null)	element.appendChild(dom.createTextNode(""));
		        else element.appendChild(dom.createTextNode(info.get(i)));
	        }
	        
	        try {
	        	Transformer tf = TransformerFactory.newInstance().newTransformer();
	        	tf.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
	        	tf.setOutputProperty(OutputKeys.INDENT, "yes");
	        Writer out = new StringWriter();
	        FileOutputStream file = new FileOutputStream(path);
	               
	        tf.transform(new DOMSource(dom), new StreamResult(file));
	        
	        File position = new File(path);
	        System.out.println(position.getPath());
	           
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