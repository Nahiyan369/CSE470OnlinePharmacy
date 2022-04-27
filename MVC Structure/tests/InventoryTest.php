<?php

class InventoryTest extends \PHPUnit\Framework\TestCase
{

    /** @group db */
    public function testProductsCanBeSet()
    {
        // Setup
        $mockRepo = $this->createMock(\App\ProductRepository::class);

        $inventory = new \App\Inventory($mockRepo);


        $mockProductsArray = [
            ['id' => 1, 'name' => 'Norestin'],
            ['id' => 2, 'name' => 'Cosmotrin'],
        ];

        $mockRepo->expects($this->exactly(1))->method('fetchProducts')->willReturn($mockProductsArray);

        // Do something

        $inventory->setProducts();

        // Make assertions
        $this->assertEquals('Norestin', $inventory->getProducts()[0]['name']);
        $this->assertEquals('Cosmotrin', $inventory->getProducts()[1]['name']);
    }













}