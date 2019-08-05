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
		
			if (!fileItem.isFormField()) { // isFormField() : 요청 파라미터가 파일이 아닌 일반 데이터인 경우 true 반환.
				
				String fileName = fileItem.getName(); // 파일 이름을 가져오고.
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1); // 
				
				File file = new File(fileUploadPath + "/" + fileName); 
				// 파일 업로드 경로 뒤에 / 표시를 붙여주고 뒤에 파일 이름을 넣어서 파일 인스턴스를 만들고.
				
				fileItem.write(file); // 다운로드 한다.
				
			}
			
		}
		
	
	%>

</body>
</html>