<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Calculadora Teorema de Pitágoras</title>
    <link rel="stylesheet" href="css/pitagoras.css?v=3">
</head>
<body>
    <header class="topbar">
        <a href="index.jsp" class="brand">
            <img src="images/logo.png" alt="UPLA" class="logo">
        </a>
        <h1 class="app-title">Calculadora Teorema de Pitágoras</h1>
        <div class="topbar-right">
            <div class="window-dots">
                <span class="dot dot-red"></span>
                <span class="dot dot-yellow"></span>
                <span class="dot dot-green"></span>
            </div>
            <a href="index.jsp" id="btnRegresar" role="button" class="btn-regresar-esquina" title="Volver al menú">&larr; Menú</a>
        </div>
    </header>

    <main class="content">
        <section class="panel panel-form">
            <h2>Hipotenusa de un Triángulo Rectángulo</h2>
            <p class="subtitle">Calcula la hipotenusa (c) a partir de los catetos (a y b).</p>

            <label for="catetoA">Cateto A (a)</label>
            <div class="input-row">
                <input type="number" id="catetoA" step="0.01" placeholder="0.00">
                <span class="unit-fixed">u</span>
            </div>

            <label for="catetoB">Cateto B (b)</label>
            <div class="input-row">
                <input type="number" id="catetoB" step="0.01" placeholder="0.00">
                <span class="unit-fixed">u</span>
            </div>

            <div class="btn-row">
                <button id="btnCalcular" type="button" class="btn-primary">Calcular</button>
                <button id="btnLimpiar" type="button" class="btn-secondary">Limpiar</button>
            </div>

            <div class="resultados">
                <span class="resultados-label">RESULTADO OBTENIDO</span>
                <div>
                    <span class="res-nombre">Hipotenusa (c)</span>
                    <span id="hipotenusaResultado" class="res-valor">0.00 u</span>
                </div>
            </div>
        </section>

        <section class="panel panel-esquema">
            <h3>Esquema de Triángulo</h3>
            <div class="dibujo">
                <svg id="svgTriangulo" viewBox="0 0 300 180" xmlns="http://www.w3.org/2000/svg">
                    <polygon id="svgPoly" points="50,150 200,150 200,50" fill="none" stroke="#059669" stroke-width="2.5"/>
                    <text id="labelA" x="35" y="105" font-size="13" fill="#059669" text-anchor="end">a = 0</text>
                    <text id="labelB" x="125" y="168" font-size="13" fill="#059669" text-anchor="middle">b = 0</text>
                    <text id="labelC" x="205" y="95" font-size="13" fill="#111827" text-anchor="start">c = 0</text>
                </svg>
            </div>
            <div class="formulas">
                <p class="formulas-title">Teorema de Pitágoras:</p>
                <p><strong>c&sup2; = a&sup2; + b&sup2;</strong></p>
                <p>c = &radic;(a&sup2; + b&sup2;)</p>
                <p id="formulaSustituida">c = &radic;(a&sup2; + b&sup2;)</p>
            </div>
        </section>
    </main>

    <footer class="footer">
        Desarrollado por: Sanchez Zuñiga Franchesco Marchelo
    </footer>

    <script src="js/pitagoras.js?v=3"></script>
</body>
</html>
