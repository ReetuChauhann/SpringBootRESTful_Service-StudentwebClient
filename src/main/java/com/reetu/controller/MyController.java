package com.reetu.controller;

import java.awt.print.Book;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.reetu.beans.Student;

@Controller
public class MyController {
	
	                         RestTemplate rs = new RestTemplate();
	                         
	                         String URL="http://localhost:3333";
	                      
	                         //to add student
	                      @RequestMapping("/addstudent")
	                      public String addStudent(@ModelAttribute Student s, Model model) {
	                    	  String API="/addstudent";
	                    	  HttpEntity<Student> requestEntity= new HttpEntity(s);
	                    	  String r = rs.postForObject(URL+API, requestEntity, String.class);
	                    	 model.addAttribute("result", r);
	                    	 return "index";
	                    	  
	                      }
	                    // to view by name
	                      @RequestMapping("/toviewbyname")
	                     public String viewbyname(String sname, Model model) {
	                    	  String API = "/student/"+sname;
	                    	  Student s = rs.getForObject(URL+API, Student.class);
	                    	  model.addAttribute("view",s);
	                    	  return "Printdata";
	                      }

	                     // to delete 
	                     @RequestMapping("deletebyname")
	                     public String delete(String sname, Model model) {
	                    	 String API = "/delete/"+sname;
	                    	 ResponseEntity<String> s = rs.exchange(URL+API, HttpMethod.DELETE,null,String.class);
	                    	 String r = s.getBody(); //to convert from collection to string
	                    	 
	                    	// HttpStatus status=s.getStatusCode();
	                    	// System.out.println(r+status);
	                    	 model.addAttribute("delete",r);
	                    	 return "index";
	                    }
	                      
	                     //togetlikename
	                     @RequestMapping("/likename")
	                     public String likename(String sname, Model model) {
	                    	 String API= "/students/"+sname;
	                    	 List<Student> s = rs.getForObject(URL+API, List.class);
	                    	 model.addAttribute("likestudents",s);
	                    	 return "LikeName";
	                     }
	                     
	                   //togetallstudents
	     	            @RequestMapping("/getallstudents")
	     	            public String xyz() {
	     	            	return "ViewAll";
	     	            }
	     	            
	     	         //togetallstudents
	     	            @RequestMapping("/viewall")
	     	            public String viewall(Model model) {
	     	            	String API="/students";
	     	            	List<Student> s= rs.getForObject(URL+API, List.class);
	     	            	model.addAttribute("view",s);
	     	            	return "ViewAll";
	     	            }
	     	          //to get all name only
	     	            @ModelAttribute
	     	            public void commonvalue1(Model model) {
	     	            	String API = "/getallids";
	     	            	List<String> allname= rs.getForObject(URL+API, List.class);
	     	            	model.addAttribute("ids",allname);
	     	            }
	     	           //to get all ids only
	     	           @ModelAttribute
	     	            public void commonvalue2(Model model) {
	     	            	String API = "/getallname";
	     	            	List<Integer> ids= rs.getForObject(URL+API, List.class);
	     	            	model.addAttribute("getallname",ids);
	     	            }
	     	           
	     	           @RequestMapping("/updatestudents")
	     	           public String update() {
	     	        	   return "update";
	     	           }
	     	          @RequestMapping("/updatebyids")
	     	          public String Update(@ModelAttribute Student s , Model model) {
	     	        	  String API= "/updateStudent";
	     	        	 HttpEntity<Student> requestEntity= new HttpEntity(s);
	     	        	 ResponseEntity<String> st = rs.exchange(URL+API, HttpMethod.PUT, requestEntity, String.class);
	     	        	 String st2 = st.getBody();
	     	        	 model.addAttribute("result",st2);
	     	        	 return "update";
	     	        	  
	     	          }
}
