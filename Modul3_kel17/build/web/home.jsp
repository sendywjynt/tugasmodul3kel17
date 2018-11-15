<%-- 
    Document   : home
    Created on : Nov 15, 2018, 12:44:22 AM
    Author     : NOTEBOOK
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
        body{
           background: #fc4a1a;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #f7b733, #fc4a1a);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #f7b733, #fc4a1a); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */  
        }
    </style>
<style>
	.menu {
		margin-left: -15px; 
		margin-right: 15px;
	}
	.daftar{
		border: 2px solid #e5e5e5; 
		border-radius: 5px; 
		padding: 5px;
	}
	.table th, .table td{
		text-align: center;
	}
	.nav{
		padding: 5px; 
		border: 2px solid #e5e5e5;
		border-radius: 5px;
	}
	.nav li{
		border-bottom: 2px solid #e5e5e5;
		border-radius: 5px;
	}
	.daftar h3{
                margin-top: 50px;
		margin-bottom: 25px;
	}
	</style>
</head>

<div class="container">
    <div class="jumbotron row">
	<center><h2><b>Data Mahasiswa</b></h2>
	<p>Modul RSBK - Kelompok17</p>
        <h5>Selamat Datang, <%=session.getAttribute("loginName")%></h6></center>
    </div>
    <div class="row content col-md-8 col-md-offset-2">
	<div class="col-md-3 menu">
	<ul class="nav nav-pills nav-stacked" style="">
            <li><a href="#">Home</a></li>
            <li><a href="/Modul3_kel17/login.jsp">Logout</a></li>
	</ul>
	</div>
	<div  class="col-md-9 daftar">
            <form action="./StudentServlet" method="POST">
                <table class="table table-bordered">
                <tr>
                <td>Student ID</td>
                <td><input class="form-control" type="text" name="studentId" value="${student.studentId}" /></td>
                </tr>
                <tr>
                <td>First Name</td>
                <td><input class="form-control" type="text" name="firstname" value="${student.firstName}" /></td>
                </tr>
                <tr>
                <td>Last Name</td>
                <td><input class="form-control" type="text" name="lastname" value="${student.lastName}" /></td>
                </tr>
                <tr>
                <td>Address</td>
                <td><input class="form-control" type="text" name="alamat" value="${student.alamat}" /></td>
                </tr>
                <tr>
                <td colspan="2">
                <input type="submit" class="btn btn-primary btn-sm" name="action" value="Add" />
                <input type="submit" class="btn btn-default btn-sm" name="action" value="Edit" />
                <input type="submit" class="btn btn-danger btn-sm" name="action" value="Delete" />
                <input type="submit" class="btn btn-warning btn-sm" name="action" value="Search" />
                </td>
                </tr>
                </table>
            </form>
            <h3 align="center">Informasi Data</h3>
		<table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                    <th>No. ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                     <th>Address</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:forEach items="${allStudents}" var="stud">
                    <tr>
                        <td>${stud.studentId}</td>
			<td>${stud.firstName}</td>
                        <td>${stud.lastName}</td>
                        <td>${stud.alamat}</td>
                    </tr>
                    </s:forEach>
                    </tbody>
                </table>
            </div>
	</div>
    </div>
</html>