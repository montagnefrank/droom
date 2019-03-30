<script type='text/javascript'>
    $(document).on('click', '.addnew_ing_btn', function (e) {
        e.preventDefault();
        var self;
        self = this;
        $.when($(".ingredientes_lista,.editing_panel").slideUp("slow")).then(function () {
            $(".agregarnuevo_panel").slideDown("slow");
        });
    });
    $(document).on('click', '.goback_ing_btn', function (e) {
        e.preventDefault();
        var self;
        self = this;
        $.when($(".agregarnuevo_panel,.editing_panel").slideUp("slow")).then(function () {
            $(".ingredientes_lista").slideDown("slow");
        });
    });
    $(document).on('click', '.singleing_row', function (e) {
        e.preventDefault();
        var self;
        self = this;
        $.when($(".agregarnuevo_panel,.ingredientes_lista").slideUp("slow")).then(function () {
            $(".editing_panel").slideDown("slow");
            console.log(self);

            // guardo los valores en variables..
            var producto = $("td.producto").html();
            var codigo   = $("td.codigo").html();
            var precio   = $("td.precio").html();
            var unidad   = $("td.unidad").html();
            var fecha    = $("td.fecha").html();
            var tipo     = $("td.tipo").html();
            var cantidad = $("td.cantidad").html();
            var estado   = $("td.estado").html(); 
            
            // Asignacion de valores a ingrediente 
            $("form[name='editarIngrediente'] #nombre").val(producto);
            $("form[name='editarIngrediente'] #codigo").val(codigo);
            $("form[name='editarIngrediente'] #precio").val(precio);
            $("form[name='editarIngrediente'] #unidad").val(unidad);
            $("form[name='editarIngrediente'] #fecha").val(fecha);
            $("form[name='editarIngrediente'] #tipo").val(tipo);
            $("form[name='editarIngrediente'] #estado").val(estado);
            $("form[name='editarIngrediente'] #cantidad").val(cantidad); 

            console.log("estado: " + $("td.estado").html());
            console.log("cantidad: " + $("td.cantidad").html());

        });
    });
</script>