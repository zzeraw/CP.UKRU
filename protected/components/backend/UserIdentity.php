<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.
     */

    private $_id;

    public function authenticate()
    {
        // $record = User::model()->findByAttributes(array('username' => $this->username));

        $username = strtolower($this->username);
        $user = User::model()->find('LOWER(username)=?',array($username));

        if ($user === null) {
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } elseif (!$user->validatePassword($this->password)) {
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else {
            $this->_id = $user->id;

            // var_dump($this->_id);

            // $this->setState('user_id', $user->id);

            $this->username = $user->username;

            $this->errorCode = self::ERROR_NONE;
        }

        return !$this->errorCode;
    }

    public function getId()
    {
        return $this->_id;
    }
}

// class UserIdentity extends CUserIdentity
// {
//     /**
//      * Authenticates a user.
//      * The example implementation makes sure if the username and password
//      * are both 'demo'.
//      * In practical applications, this should be changed to authenticate
//      * against some persistent user identity storage (e.g. database).
//      * @return boolean whether authentication succeeds.
//      */
//     private $_id;
//     public function authenticate()
//     {
//         $record = User::model()->findByAttributes(array('username' => $this->username));
//         if ($record === null) {
//             $this->errorCode = self::ERROR_USERNAME_INVALID;
//         } elseif ($record->password !== crypt($this->password, $record->password)) {
//             $this->errorCode = self::ERROR_PASSWORD_INVALID;
//         } else {
//             $this->_id = $record->id;
//             $this->setState('user_id', $record->id);
//             $this->errorCode = self::ERROR_NONE;
//         }
//         return !$this->errorCode;
//     }
//     public function getId()
//     {
//         return $this->_id;
//     }
// }