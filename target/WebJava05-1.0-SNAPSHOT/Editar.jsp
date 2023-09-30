<%-- 
    Document   : Editar
    Created on : 29/09/2023, 01:46:21 AM
    Author     : valer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Usuario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="display-4">Editar Usuario</h1>
        <form action="/WebJava05/GuardarUsuario" method="post">
            <input hidden value="<c:out value="${valores.codigo}"/>" name="codigo">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="<c:out value="${valores.nombre}"/>" required>
            </div>
            <div class="mb-3">
                <label for="clave" class="form-label">Clave:</label>
                <input type="text" class="form-control" id="clave" name="clave" value="<c:out value="${valores.clave}"/>" required>
            </div>
            <div class="mb-3">
                <label for="estado" class="form-label">Estado:</label>
                <select class="form-select" id="estado" name="estado" required>
                    <option value="A" <c:out value="${valores.estado == 'A' ? 'selected' : ''}"/>>Activo</option>
                    <option value="X" <c:out value="${valores.estado == 'X' ? 'selected' : ''}"/>>Inactivo</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Guardar</button>
            <a href="jstl_sql_a.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
