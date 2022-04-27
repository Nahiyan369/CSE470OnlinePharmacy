<?php

class UserTest extends \PHPUnit\Framework\TestCase
{
	
	protected $user;
	public function testEmail()
	{
		$user = new \App\User;

		$user->setFirstName('Nahiyan');

		$user->setLastName('Jarif');

		$user->setEmail('nahianjarif@gmail.com');

		$emailVariables = $user->getEmailVariables();

		$this->assertArrayHasKey('full_name', $emailVariables);
		$this->assertArrayHasKey('email', $emailVariables);

		$this->assertEquals($emailVariables['full_name'], 'Nahiyan Jarif');
		$this->assertEquals($emailVariables['email'], 'nahianjarif@gmail.com');
	}
}