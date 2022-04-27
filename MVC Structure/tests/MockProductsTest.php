<?php

use PHPUnit\Framework\TestCase;

class MockProductsTest extends TestCase
{
    /** @group db */
    public function testMockProductsAreReturned()
    {
        $mockRepo = $this->createMock(\App\ProductRepository::class);

        $mockProductsArray = [
            ['id' => 1, 'name' => 'Norestin'],
            ['id' => 2, 'name' => 'Cosmotrin'],
        ];

        $mockRepo->method('fetchProducts')->willReturn($mockProductsArray);

        $products = $mockRepo->fetchProducts();

        $this->assertEquals('Norestin', $products[0]['name']);
    }
}