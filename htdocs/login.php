<?php
    /* User login process, checks if user exists and password is correct */
     
    // Escape email to protect against SQL injections
    $email = $mysqli->escape_string($_POST['email']);
    $result = $mysqli->query("SELECT * FROM users WHERE email='$email'");
     
    if ( $result->num_rows == 0 ){ // User doesn't exist
        $_SESSION['message'] = "User with that email doesn't exist!";
        header("location: error.php");
    }
    else { // User exists
     
        unset( $_SESSION['message'] );
        $user = $result->fetch_assoc();
                  //if ($_POST['password'] == $user['password'])  {
     
          if (password_verify($_POST['password'], $user['hash'])){
            $_SESSION['email'] = $user['email'];
            $_SESSION['first_name'] = $user['first_name'];
            $_SESSION['last_name'] = $user['last_name'];
     
            // This is how we'll know the user is logged in
            $_SESSION['logged_in'] = true;
     
            header("location: profile.php");
          }
          else {
            $thing1=(string)password_verify($_POST['password'], $user['hash']);
            $thing2=$user['password'];
            $thing3=$_POST['password'];

            $_SESSION['message'] = "You have entered wrong password, try again! $thing1";
            header("location: error.php");
        }
    }
