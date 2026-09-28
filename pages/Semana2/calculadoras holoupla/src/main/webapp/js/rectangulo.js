document.addEventListener('DOMContentLoaded', function () {
    var inputBase = document.getElementById('base');
    var inputAltura = document.getElementById('altura');
    var selectBase = document.getElementById('unidadBase');
    var selectAltura = document.getElementById('unidadAltura');
    var btnCalcular = document.getElementById('btnCalcular');
    var btnLimpiar = document.getElementById('btnLimpiar');
    var areaResultado = document.getElementById('areaResultado');
    var perimetroResultado = document.getElementById('perimetroResultado');
    var svgRect = document.getElementById('svgRect');
    var labelB = document.getElementById('labelB');
    var labelH = document.getElementById('labelH');

    // Sincroniza las unidades de base y altura
    selectBase.addEventListener('change', function () { selectAltura.value = selectBase.value; });
    selectAltura.addEventListener('change', function () { selectBase.value = selectAltura.value; });

    btnCalcular.addEventListener('click', calcular);
    btnLimpiar.addEventListener('click', limpiar);

    function limpiar() {
        inputBase.value = '';
        inputAltura.value = '';
        selectBase.value = 'cm';
        selectAltura.value = 'cm';
        mostrar(0, 0, 0, 0, 'cm');
        inputBase.focus();
    }

    function calcular() {
        if (inputBase.value.trim() === '' || inputAltura.value.trim() === '') {
            alert('Ingresa la base y la altura.');
            return;
        }
        var b = parseFloat(inputBase.value);
        var h = parseFloat(inputAltura.value);
        if (isNaN(b) || isNaN(h) || b <= 0 || h <= 0) {
            alert('Ingresa valores numéricos válidos (mayores a 0).');
            return;
        }
        mostrar(b, h, b * h, 2 * (b + h), selectBase.value);
    }

    function mostrar(b, h, area, perimetro, unidad) {
        areaResultado.innerHTML = area.toFixed(2) + ' ' + unidad + '<sup>2</sup>';
        perimetroResultado.textContent = perimetro.toFixed(2) + ' ' + unidad;
        actualizarEsquema(b, h, unidad);
    }

    function actualizarEsquema(b, h, unidad) {
        var escala = Math.min(220 / Math.max(b, 1), 100 / Math.max(h, 1), 30);
        var ancho = Math.max(b * escala, 30);
        var alto = Math.max(h * escala, 20);
        svgRect.setAttribute('width', ancho);
        svgRect.setAttribute('height', alto);
        svgRect.setAttribute('x', (280 - ancho) / 2);
        svgRect.setAttribute('y', (140 - alto) / 2 + 10);
        labelB.textContent = 'b = ' + b.toFixed(2) + ' ' + unidad;
        labelH.textContent = 'h = ' + h.toFixed(2) + ' ' + unidad;
    }

});
