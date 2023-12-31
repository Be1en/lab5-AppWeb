<%-- 
    Document   : jstl_core_c
    Created on : 25/09/2023, 04:03:23 PM
    Author     : valer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.3.1/css/bootstrap.min.css" type="text/css" />
    </head>
        <body>
        <c:set var="variable" value="-9"/>
        <c:set var="resultado" value=""/>
        <c:choose>
            <c:when test='${variable > 0}'>
                <c:set var="resultado" value="El numero ${variable} es positivo"/>
            </c:when>
            <c:when test='${variable < 0}'>
                <c:set var="resultado" value="El numero ${variable} es negativo"/>
            </c:when>
            <c:otherwise>
                <c:set var="resultado" value="El numero ${variable} es nulo"/>
            </c:otherwise>
        </c:choose>
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-header">Uso de condicional</div>
                        <div class="card-body">
                            <h5 class="card-title"><c:out value="Valor de variable: ${variable}"/></h5>
                            <p class="card-text"><c:out value="${resultado}"/></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>       
    </body>

</html>
