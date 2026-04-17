<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Carrito</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>

<body>

<h1>Carrito de Compras</h1>

<a href="${pageContext.request.contextPath}/catalogo">← Volver al catálogo</a>

<table>
    <thead>
    <tr>
        <th>Producto</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Subtotal</th>
    </tr>
    </thead>

    <tbody>
    <c:choose>

        <c:when test="${empty items}">
            <tr>
                <td colspan="4">El carrito está vacío.</td>
            </tr>
        </c:when>

        <c:otherwise>
            <c:set var="total" value="0" />

            <c:forEach var="item" items="${items}">
                <tr>
                    <td>${item.producto.nombre}</td>

                    <td>
                        <fmt:formatNumber value="${item.producto.precio}" type="currency" currencySymbol="$"/>
                    </td>

                    <td>${item.cantidad}</td>

                    <td>
                        <fmt:formatNumber value="${item.subtotal}" type="currency" currencySymbol="$"/>
                    </td>
                </tr>

                <!-- Acumular total -->
                <c:set var="total" value="${total + item.subtotal}" />
            </c:forEach>

            <tr>
                <td colspan="3"><strong>Total</strong></td>
                <td>
                    <strong>
                        <fmt:formatNumber value="${total}" type="currency" currencySymbol="$"/>
                    </strong>
                </td>
            </tr>

        </c:otherwise>

    </c:choose>
    </tbody>
</table>

<br>

<!-- Acciones -->
<form method="post" action="${pageContext.request.contextPath}/carrito" style="display:inline;">
    <input type="hidden" name="accion" value="limpiar">
    <button type="submit">Limpiar carrito</button>
</form>

<form method="post" action="${pageContext.request.contextPath}/carrito" style="display:inline;">
    <input type="hidden" name="accion" value="comprar">
    <button type="submit">Finalizar compra</button>
</form>

</body>
</html>