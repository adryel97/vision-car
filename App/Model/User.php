<?php
namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class User extends DataLayer
{
    /**
     * User construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_users', ['name_users', 'email_users', 'password_users'], 'id_users', false);
    }


    /**
     * It checks if the email and password are in the database.
     * 
     * @param email {String}
     * @param password {String}
     * 
     * @return a {Boolean}.
     */
    public function conectUser($email, $password)
    {
        $sql = 'SELECT * FROM tbl_users WHERE email_users = ? AND password_users = ?';
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->bindValue(1, $email);
        $con->bindValue(2, $password);
        $con->execute();

        $user = $con->fetch(\PDO::FETCH_OBJ);

        if (isset($user->email_users) && isset($user->password_users)) {
            if ($user->email_users == $email && $user->password_users == $password) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * It gets the user's information from the database and returns it as an object.
     * 
     * @return user {Object}.
     */
    public static function startUser()
    {
        $sql = 'SELECT * FROM tbl_users WHERE email_users = ? AND password_users = ?';
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->bindValue(1, $_SESSION['email']);
        $con->bindValue(2, md5($_SESSION['password']));
        $con->execute();

        $user = $con->fetch(\PDO::FETCH_OBJ);

        return $user;
    }
}