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
        // $query = query()
        
    }

?>