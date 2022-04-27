<?php

class cartTotalPriceTest extends \PHPUnit\Framework\TestCase
{
    public function testCorrectNetPriceIsReturned()
    {
        require '..\Model\database\Cart.php';

        $cart=new Cart();
        $cart->getSum =10;
        $netPrice = $cart->getNetPrice();

        $this->assertEquals(10,$netPrice);

    }
}