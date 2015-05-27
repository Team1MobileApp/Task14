package controller;

import java.io.File;
import java.io.FileInputStream;
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
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilderFactory;

import model.Model;

import org.genericdao.RollbackException;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import javax.xml.parsers.*;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;

import org.xml.sax.*;
import org.w3c.dom.*;

import databeans.Information;
import formbeans.PathForm;

public class InputXMLAction extends Action {
	private FormBeanFactory<PathForm> formBeanFactory = FormBeanFactory
			.getInstance(PathForm.class);

	// constructor
	public InputXMLAction(Model model) {
		
	}

	// get action name
	public String getName() {
		return "InputXML.do";
	}

	// return next page name
	public String perform(HttpServletRequest request, HttpServletResponse response) {
			String path = "/Users/Charlotte/Desktop/xml/test.xml";		
			Information info = parseXMLFile(path);
			request.setAttribute("information", info);
			return "index.jsp";

	}
	
	private Information parseXMLFile(String path) {
		Information info = new Information();
		ArrayList<String> list = new ArrayList<String>();
		ArrayList<String> res = new ArrayList<String>();
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
		
		try {
			File file = new File(path);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			NodeList nodeList = doc.getChildNodes();
			Element root = (Element) nodeList.item(0);
			
			nodeList = root.getChildNodes();
			
			for (String s : list) {
				nodeList = root.getElementsByTagName(s);
				Element element = (Element) nodeList.item(0);
				nodeList = element.getChildNodes();
				if (((Node) nodeList.item(0)) == null) res.add("");
				else res.add(((Node) nodeList.item(0)).getNodeValue());				
			}
			System.out.println(res);
			info = new Information(res.get(0), res.get(1), res.get(2), res.get(3), res.get(4),
					res.get(5), res.get(6), res.get(7), res.get(8), res.get(9), res.get(10), 
					res.get(11), res.get(12), res.get(13), res.get(14), res.get(15), res.get(16), 
					res.get(17));
			return info;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}	
}