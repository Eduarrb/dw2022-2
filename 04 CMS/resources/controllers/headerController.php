<?php
    function get_header(){
        $query = query("SELECT * FROM header");
        confirmar($query);
        return fetch_array($query);
    }

?>