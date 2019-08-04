<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Upload</title>
</head>
<body>

	<% 
		
		String fileUploadPath = "c:\\upload";
	
		DiskFileUpload upload = new DiskFileUpload(); 
		
		List items = upload.parseRequest(request); // form 페이지에서 전달된 요청 파라미터를 받음.
		
		Iterator params = items.iterator(); // 요청 파라미터를 iterator 클래스로 변환.
		
		while(params.hasNext()) { // 요청 파라미터를 한번 쭉 훑는다. 파라미터가 있는 동안은.
			
			FileItem fileItem = (FileItem) params.next(); //  
		
			if (!fileItem.isFormField()) {
				
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
				
			}
			
		}
		
	
	%>

</body>
</html>