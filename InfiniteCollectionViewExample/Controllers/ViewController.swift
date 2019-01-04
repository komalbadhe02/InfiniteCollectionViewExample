///**
/**
InfiniteCollectionViewExample
ViewController.swift
Created by: KOMAL BADHE on 03/01/19
Copyright (c) 2019 KOMAL BADHE
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var arr_products = NSArray();
        
        arr_products = Product_handler().get_product_list() as NSArray;
        
        print(arr_products);
    }


}

