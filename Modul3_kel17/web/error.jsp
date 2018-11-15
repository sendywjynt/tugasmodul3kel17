<%-- 
    Document   : error
    Created on : Nov 15, 2018, 12:44:38 AM
    Author     : NOTEBOOK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>

<style type="text/css">
        body{
           background: #fc4a1a;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #f7b733, #fc4a1a);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #f7b733, #fc4a1a); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */  
        }
    </style>
</head>
<body>
<h1>Error - <%=request.getAttribute("error")%> </h1>
</body>
</html>