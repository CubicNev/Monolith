<%-- 
    Document   : CerrarSesion
    Created on : 06-nov-2017, 22:07:58
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<%
   HttpSession sesion = request.getSession();
    sesion.invalidate();
    response.sendRedirect("index.html");

%>