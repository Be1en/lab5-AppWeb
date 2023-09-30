<%-- 
    Document   : resultado
    Created on : 28/09/2023, 05:35:21 PM
    Author     : valer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado de la Calculadora</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        
        <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
            <div class="card-header">
                <h1>Calculadora</h1>
            </div>
            <div class="card-body">
                <p>El resultado de la ${operacion} es: ${resultado}</p>
            </div>
        </div>
    </div>
</body>
</html>

