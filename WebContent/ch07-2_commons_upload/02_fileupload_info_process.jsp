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
<title>File upload information process</title>
</head>
<body>
	
	<%
	
		String path = "c:\\upload"; // 업로드 경로.
		
		DiskFileUpload upload = new DiskFileUpload(); // 업로드 인스턴스 생성.
		
		upload.setSizeMax(1000000); // 최대 업로드 용량 설정.
		upload.setSizeThreshold(4096); // set max memory size.
		upload.setRepositoryPath(path); // 업로드 경로 설정.
		
		List items = upload.parseRequest(request); // parse the request.
		
		Iterator params = items.iterator(); // 이터레이터 쓰겠다.
		
		while (params.hasNext()) {
			
			FileItem item = (FileItem) params.next();
			
			if(item.isFormField()) { // 파일이 아니라 일반 데이터인 경우 true 리턴.
				
				String name = item.getFieldName(); // 
				String value = item.getString("utf-8");
				out.println(name + " = " + value + "<br>");
				
			} else { // 업로드 파일.
				
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				out.println("fileName = " + fileName );
				
				//fileName = fileName.substring(fileName.lastIndexOf("\\") + 1); // 왜 넣은지 모르겠는 코드.
				
				long fileSize = item.getSize();
				
				File file = new File(path + "/" + fileName); // 해당 경로에 파일 인스턴스를 생성.
				item.write(file);
				
				out.println("---------------------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
				out.println("파일 크기 : "+ fileSize);
				
			}
			
		}
	
	%>
	
</body>
</html>