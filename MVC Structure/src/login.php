<?php

namespace App;

class User
{
	
	public $email;
	public function setEmail($email)
	{
		$this->email = $email;
	}

	public function getEmail()
	{
		return $this->email;
	}

	public function getEmailVariables()
	{
		return [
			'email' => $this->getEmail(),
		];
	}

}