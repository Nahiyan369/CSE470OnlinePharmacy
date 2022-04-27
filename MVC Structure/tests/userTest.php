<?php
class UserTest extends \PHPUnit\Framework\TestCase
{
	protected $user;

	public function setUp()
	{
		
		$this->user = new \App\Models\User;
		
	}


	public function testFirstName()
	{
		$this->user->setFirstName('Nahiyan');

		$this->assertEquals($this->user->getFirstName(), 'Nahiyan');
	}

	public function testLastName()
	{
		$this->user->setLastName('Jarif');

		$this->assertEquals($this->user->getLastName(), 'Jarif');
	}

	public function testFullName()
	{
		$user = new \App\Models\User;

		$user->setFirstName('Nahiyan');

		$user->setLastName('Jarif');

		$this->assertEquals($user->getFullName(), 'Nahiyan Jarif');
	}

	public function testFirstAndLastName()
	{
		$user = new \App\Models\User;

		$user->setFirstName('Nahiyan     ');

		$user->setLastName('     Jarif');

		$this->assertEquals($user->getFirstName(), 'Nahiyan');

		$this->assertEquals($user->getLastName(), 'Jarif');
	}
}