<?php
    function validar_user_reg(){
        $min = 3;
        $max = 10;
        $errores = [];

        if(isset($_POST['registrar'])){
            $user_nombres = limpiar_string(trim($_POST['user_nombres']));
            $user_apellidos = limpiar_string(trim($_POST['user_apellidos']));
            $user_email = limpiar_string(trim($_POST['user_email']));
            $user_pass = limpiar_string(trim($_POST['user_pass']));
            $user_pass_confirmar = limpiar_string(trim($_POST['user_pass_confirmar']));

            if(strlen($user_nombres) < $min){
                $errores[] = "Tus nombres no debe tener menos de {$min} caracteres";
            }
            if(strlen($user_nombres) > $max){
                $errores[] = "Tus nombres no debe tener mas de {$max} caracteres";
            }
            if(strlen($user_apellidos) < $min){
                $errores[] = "Tus apellidos no debe tener menos de {$min} caracteres";
            }
            if(strlen($user_apellidos) > $max){
                $errores[] = "Tus apellidos no debe tener mas de {$max} caracteres";
            }
            if(email_existe($user_email)){
                $errores[] = "El correo ingresado ya existe";
            }
            if($user_pass != $user_pass_confirmar){
                $errores[] = "Las contraseñas deben ser iguales";
            }

            if(!empty($errores)){
                foreach($errores as $error){
                    echo display_danger_msj($error);
                }
            } else{
                if(registro_usuario($user_nombres, $user_apellidos, $user_email, $user_pass)){
                    set_mensaje(display_success_msj("Registro satiosfactorio. Por favor, revisa tu correo o spam para la activación de tu cuenta. Esto puede tardar algunos minutos"));
                    redirect("register.php");
                } else {
                    set_mensaje(display_danger_msj("Lo sentimos, no pudimos registrar tu cuenta. Intentalo mas tarde"));
                    redirect("register.php");
                }
            }
        }
    }
    function registro_usuario($nombres, $apellidos, $email, $pass){
        $user_nombres = limpiar_string(trim($nombres));
        $user_apellidos = limpiar_string(trim($apellidos));
        $user_email = limpiar_string(trim($email));
        $user_pass = limpiar_string(trim($pass));
        $user_token = md5($user_email);
        $user_pass = password_hash($user_pass, PASSWORD_BCRYPT, array('cost' => 12));
        $query = query("INSERT INTO usuarios (user_nombres, user_apellidos, user_email, user_pass, user_token) VALUES ('{$user_nombres}', '{$user_apellidos}', '{$user_email}', '{$user_pass}', '{$user_token}')");
        confirmar($query);
        $mensaje = "Por favor activa tu cuenta mediante este <a href='http://localhost/dw2022-2/04%20CMS/public/activate.php?email={$user_email}&token={$user_token}' target='_blank'>LINK</a>";
        send_email($user_email, 'Activa tu cuenta',$mensaje);
        return true;
    }

    function activar_usuario(){
        if(isset($_GET['email']) && isset($_GET['token'])){
            $user_email = limpiar_string(trim($_GET['email']));
            $user_token = limpiar_string(trim($_GET['token']));
            $query = query("SELECT user_id FROM usuarios WHERE user_email = '{$user_email}' AND user_token = '{$user_token}'");
            confirmar($query);
            $fila = fetch_array($query);
            $user_id = $fila['user_id'];
            if(contar_filas($query) == 1){
                $query = query("UPDATE usuarios SET user_status = 1, user_token = '' WHERE user_id = {$user_id}");
                confirmar($query);
                set_mensaje(display_success_msj("Su cuenta ha sido verificada y activada, por favor inicie sesión"));
                redirect("login.php");
            } else {
                set_mensaje(display_danger_msj("Los datos no son válidos. Por favor intente otra vez"));
                redirect("register.php");
            }
        }
    }
?>