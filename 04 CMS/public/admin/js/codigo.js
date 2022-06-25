$(document).ready(function(){
    $(".delete_link").on('click', function(){
        const id = $(this).attr('rel');
        const tabla = $(this).attr('tabla');
        const delete_url = "index.php?" + tabla + "&delete=" + id;
        $(".modal-title-delete").html("Borrar " + tabla);
        $(".body-delete").html('¿Estas seguro de eliminar el elemento?');
        $('.btn_delete_link').attr('href', delete_url);
        $("#deleteModal").modal('show');
    });
});