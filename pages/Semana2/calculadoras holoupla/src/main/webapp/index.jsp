<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Calculadoras UPLA</title>
    <link rel="stylesheet" href="css/menu.css?v=3">
</head>
<body>
    <header class="topbar">
        <div class="brand">
            <img src="images/logo.png" alt="UPLA" class="logo">
        </div>
        <h1 class="app-title">Calculadoras UPLA</h1>
        <div class="window-dots">
            <span class="dot dot-red"></span>
            <span class="dot dot-yellow"></span>
            <span class="dot dot-green"></span>
        </div>
    </header>

    <main class="menu-content">
        <p class="menu-subtitle">Selecciona la calculadora que deseas utilizar.</p>

        <div class="tarjetas">
            <a href="rectangulo.jsp" class="tarjeta tarjeta-morada">
                <h2>Calculadora de Rectángulo</h2>
                <p>Calcula el área y el perímetro a partir de la base y la altura.</p>
                <span class="tarjeta-link">Abrir &rarr;</span>
            </a>

            <a href="pitagoras.jsp" class="tarjeta tarjeta-verde">
                <h2>Calculadora Teorema de Pitágoras</h2>
                <p>Calcula la hipotenusa de un triángulo rectángulo a partir de sus catetos.</p>
                <span class="tarjeta-link">Abrir &rarr;</span>
            </a>
        </div>
    </main>

    <footer class="footer">
        Desarrollado por: Sanchez Zuñiga Franchesco Marchelo
    </footer>
</body>
</html>
