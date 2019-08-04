<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	MultipartRequest multi = new MultipartRequest
		(request, "c:\\zzz\\upload" , 5*1024*1024 , "utf-8", new DefaultFileRenamePolicy());
	// 공식 설명서에 따르면.. (http://www.servlets.com/cos/javadoc/com/oreilly/servlet/MultipartRequest.html)
	// MultipartRequest
	// (javax.servlet.http.HttpServletRequest request, java.lang.String saveDirectory, int maxPostSize, 
	//  java.lang.String encoding, FileRenamePolicy policy) 
	
	// FileRenamePolicy 는? 설명서에 따르면.
	// (http://www.servlets.com/cos/javadoc/com/oreilly/servlet/multipart/FileRenamePolicy.html)
	// An interface to provide a pluggable file renaming policy, 
	// particularly useful to handle naming conflicts with an existing file.
	
	// 파일 이름을 바꿔주는 클래스 라고함. 파일명이 같을 때.
	
	Enumeration params = multi.getParameterNames(); // input 값으로 들어온 파라미터의 이름들을 반환.
	
	while (params.hasMoreElements()) {
		
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = " + value + "<br>");
				
	}
	
	out.println("-----------------------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while(files.hasMoreElements()) {
		
		String name = (String) files.nextElement();
		
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		
	}

%>
