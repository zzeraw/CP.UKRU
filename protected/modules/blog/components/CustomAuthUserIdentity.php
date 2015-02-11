<?php
/**
 * EAuthUserIdentity class file.
 *
 * @author Maxim Zemskov <nodge@yandex.ru>
 * @link http://github.com/Nodge/yii-eauth/
 * @license http://www.opensource.org/licenses/bsd-license.php
 */

/**
 * EAuthUserIdentity is a base User Identity class to authenticate with EAuth.
 *
 * @package application.extensions.eauth
 */
class CustomAuthUserIdentity extends EAuthUserIdentity {

	/**
	 * Authenticates a user based on {@link service}.
	 * This method is required by {@link IUserIdentity}.
	 *
	 * @return boolean whether authentication succeeds.
	 */
	public function authenticate() {
		if ($this->service->isAuthenticated) {
			// $this->id = $this->service->serviceName . $this->service->id;
			$this->name = $this->service->getAttribute('name');

			$user_model = BlogUser::model()->getUser($this->service->serviceName, $this->service->id);

			// var_dump($user_model);

			$user_model->social_name = $this->service->serviceName;
			$user_model->social_id = $this->service->id;
			$user_model->name = $this->service->getAttribute('name');
			$user_model->profile_url = $this->service->getAttribute('url');
			$user_model->photo = $this->service->getAttribute('photo');

			if ($user_model->save()) {
				$this->id = $user_model->id;

				$this->setState('id', $this->id);
				$this->setState('name', $this->name);
				$this->setState('service', $this->service->serviceName);

				$this->errorCode = self::ERROR_NONE;
			} else {
				$this->errorCode = self::ERROR_NOT_AUTHENTICATED;
			}

			// You can save all given attributes in session.
			//$attributes = $this->service->getAttributes();
			//$session = Yii::app()->session;
			//$session['eauth_attributes'][$this->service->serviceName] = $attributes;
		}
		else {
			$this->errorCode = self::ERROR_NOT_AUTHENTICATED;
		}
		return !$this->errorCode;
	}

}
