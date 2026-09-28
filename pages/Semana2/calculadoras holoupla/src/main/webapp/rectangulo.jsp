<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Calculadora de Rectángulo</title>
    <link rel="stylesheet" href="css/rectangulo.css?v=3">
</head>
<body>
    <header class="topbar">
        <a href="index.jsp" class="brand">
            <img src="images/logo.png" alt="UPLA" class="logo">
        </a>
        <h1 class="app-title">Calculadora de Rectángulo</h1>
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
            <h2>Área y Perímetro de un Rectángulo</h2>
            <p class="subtitle">Ingresa los lados para calcular las propiedades geométricas.</p>

            <label for="base">Base (b)</label>
            <div class="input-row">
                <input type="number" id="base" step="0.01" placeholder="0.00">
                <select id="unidadBase" class="unit-select">
                    <option value="mm">mm</option>
                    <option value="cm" selected>cm</option>
                    <option value="m">m</option>
                    <option value="in">in</option>
                </select>
            </div>

            <label for="altura">Altura (h)</label>
            <div class="input-row">
                <input type="number" id="altura" step="0.01" placeholder="0.00">
                <select id="unidadAltura" class="unit-select">
                    <option value="mm">mm</option>
                    <option value="cm" selected>cm</option>
                    <option value="m">m</option>
                    <option value="in">in</option>
                </select>
            </div>

            <div class="btn-row">
                <button id="btnCalcular" type="button" class="btn-primary">Calcular</button>
                <button id="btnLimpiar" type="button" class="btn-secondary">Limpiar</button>
            </div>

            <div class="resultados">
                <span class="resultados-label">RESULTADOS</span>
                <div class="resultados-grid">
                    <div>
                        <span class="res-nombre">Área (A)</span>
                        <span id="areaResultado" class="res-valor">0.00 cm&sup2;</span>
                    </div>
                    <div>
                        <span class="res-nombre">Perímetro (P)</span>
                        <span id="perimetroResultado" class="res-valor">0.00 cm</span>
                    </div>
                </div>
            </div>
        </section>

        <section class="panel panel-esquema">
            <h3>Esquema del Rectángulo</h3>
            <div class="dibujo">
                <svg id="svgRectangulo" viewBox="0 0 300 180" xmlns="http://www.w3.org/2000/svg">
                    <rect id="svgRect" x="40" y="30" width="220" height="100" fill="#E0E0FA" stroke="#4F46E5" stroke-width="2"/>
                    <text id="labelH" x="270" y="80" font-size="13" fill="#4F46E5" text-anchor="start">h = 0.00 cm</text>
                    <text id="labelB" x="150" y="150" font-size="13" fill="#4F46E5" text-anchor="middle">b = 0.00 cm</text>
                </svg>
            </div>
            <div class="formulas">
                <p class="formulas-title">Fórmulas utilizadas:</p>
                <p><strong>Área:</strong> A = b &times; h</p>
                <p><strong>Perímetro:</strong> P = 2 &times; (b + h)</p>
            </div>
        </section>
    </main>

    <footer class="footer">
        Desarrollado por: Sanchez Zuñiga Franchesco Marchelo
    </footer>

    <script src="js/rectangulo.js?v=3"></script>
</body>
</html>
