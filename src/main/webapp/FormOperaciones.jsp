<%-- 
    Document   : FormOperaciones
    Created on : 28/09/2023, 05:26:20 PM
    Author     : valer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora Simple</title>
    <!-- Agrega los estilos de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1>Calculadora</h1>
        <form action="/WebJava05/Controlador2" method="post">
            <div class="mb-3">
                <label for="numero1" class="form-label">Número 1:</label>
                <input type="float" class="form-control" id="numero1" name="numero1" required>
            </div>
            <div class="mb-3">
                <label for="numero2" class="form-label">Número 2:</label>
                <input type="float" class="form-control" id="numero2" name="numero2" required>
            </div>
            <div class="mb-3">
                <label for="operacion" class="form-label">Operación:</label>
                <select class="form-select" id="operacion" name="operacion" required>
                    <option value="suma">Suma</option>
                    <option value="resta">Resta</option>
                    <option value="multiplicacion">Multiplicación</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Calcular</button>
        </form>
    </div>
</body>
</html>