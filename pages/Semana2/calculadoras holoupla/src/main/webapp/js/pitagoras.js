document.addEventListener('DOMContentLoaded', function () {
    var inputA = document.getElementById('catetoA');
    var inputB = document.getElementById('catetoB');
    var btnCalcular = document.getElementById('btnCalcular');
    var btnLimpiar = document.getElementById('btnLimpiar');
    var hipotenusaResultado = document.getElementById('hipotenusaResultado');
    var formulaSustituida = document.getElementById('formulaSustituida');
    var svgPoly = document.getElementById('svgPoly');
    var labelA = document.getElementById('labelA');
    var labelB = document.getElementById('labelB');
    var labelC = document.getElementById('labelC');

    btnCalcular.addEventListener('click', calcular);
    btnLimpiar.addEventListener('click', limpiar);

    function limpiar() {
        inputA.value = '';
        inputB.value = '';
        mostrar(0, 0);
        formulaSustituida.innerHTML = 'c = &radic;(a&sup2; + b&sup2;)';
        inputA.focus();
    }

    function calcular() {
        if (inputA.value.trim() === '' || inputB.value.trim() === '') {
            alert('Ingresa el cateto A y el cateto B.');
            return;
        }
        var a = parseFloat(inputA.value);
        var b = parseFloat(inputB.value);
        if (isNaN(a) || isNaN(b) || a <= 0 || b <= 0) {
            alert('Ingresa valores numéricos válidos (mayores a 0).');
            return;
        }
        mostrar(a, b);
        var c = Math.sqrt(a * a + b * b);
        formulaSustituida.innerHTML = 'c = &radic;(' + fmt(a) + '&sup2; + ' + fmt(b) + '&sup2;) = &radic;' +
            fmt(a * a + b * b) + ' = ' + fmt(c);
    }

    function mostrar(a, b) {
        var c = Math.sqrt(a * a + b * b);
        hipotenusaResultado.textContent = c.toFixed(2) + ' u';
        actualizarEsquema(a, b, c);
    }

    function fmt(v) {
        var r = Math.round(v * 100) / 100;
        return (r % 1 === 0) ? r.toFixed(0) : r.toString();
    }

    function actualizarEsquema(a, b, c) {
        var escala = Math.min(150 / Math.max(b, 1), 100 / Math.max(a, 1), 30);
        var base = Math.max(b * escala, 30);
        var alto = Math.max(a * escala, 20);
        var x0 = 60, y0 = 150, x1 = x0 + base, y2 = y0 - alto;

        svgPoly.setAttribute('points', x0 + ',' + y0 + ' ' + x1 + ',' + y0 + ' ' + x1 + ',' + y2);
        labelA.setAttribute('x', x0 - 10);
        labelA.setAttribute('y', (y0 + y2) / 2);
        labelA.textContent = 'a = ' + fmt(a);
        labelB.setAttribute('x', (x0 + x1) / 2);
        labelB.setAttribute('y', y0 + 18);
        labelB.textContent = 'b = ' + fmt(b);
        labelC.setAttribute('x', (x0 + x1) / 2 + 8);
        labelC.setAttribute('y', (y0 + y2) / 2 - 8);
        labelC.textContent = 'c = ' + fmt(c);
    }

});
