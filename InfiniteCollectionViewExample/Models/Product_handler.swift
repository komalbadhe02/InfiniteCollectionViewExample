///**
/**
InfiniteCollectionViewExample
Product_handler.swift
Created by: KOMAL BADHE on 03/01/19
Copyright (c) 2019 KOMAL BADHE
*/

import Foundation
class Product_handler: NSObject {
    
    
    func get_product_list() -> [ [String : Any] ] {
        
        var arr_products :[ [String : Any] ];
        
        arr_products  =
      [
[   "entities" :         [
[
"product_category" : "TV",
"product_description" : "SMART TV",
"product_id" : "6",
"product_image_link" : "../assets/product_image/tv2.jpg",
"product_model" : "S-123",
"product_name" : "Samsung",
"product_scan_code" : "S_T123",
"target_url" : ".."
],
[
"product_category" : "TV",
"product_description" : "SMART TV",
"product_id" : "5",
"product_image_link" : "../assets/product_image/tv1.jpg",
"product_model" : "LG123",
"product_name" : "LG TV",
"product_scan_code" : "lg_T123",
"target_url" : ".."
]
],
"product_category" : "TV"
],
[
"entities" :       [
[
"product_category" : "Mobile",
"product_description" : "basic version,music player,bluetooth",
"product_id" : "1",
"product_image_link" : "../assets/product_image/guru.jpg",
"product_model" : "Music 2",
"product_name" : "Samsung Guru",
"product_scan_code" : "sgMusic2",
"target_url" : "..",
],
[
"product_category" : "Mobile",
"product_description" : "basic version,music player,bluetooth,Wifi",
"product_id" : "2",
"product_image_link" : "../assets/product_image/e1200.jpg",
"product_model" : "E1200",
"product_name" : "Samsung Guru",
"product_scan_code" : "sgE1200",
"target_url" : ".."
],
[
"product_category" : "Mobile",
"product_description" : "better camera quality",
"product_id" : "7",
"product_image_link" : "../assets/product_image/guru.jpg",
"product_model" : "S3",
"product_name" : "Samsung S3",
"product_scan_code" : "Nova",
"target_url" : ".."
]
],
"product_category" : "Mobile"
],
[
"entities" :         [
[
"product_category" : "Washing Machine",
"product_description" : "Washing cloth,blankets",
"product_id" : "3",
"product_image_link" : "../assets/product_image/lg_wm.jpg",
"product_model" : "F1056NDP25",
"product_name" : "LG",
"product_scan_code" : "lg_F1056NDP25",
"target_url" : ".."
],
[
"product_category" : "Washing Machine",
"product_description" : "Washing cloth,blankets.smart",
"product_id" : "4",
"product_image_link" : "../assets/product_image/wm1.jpg",
"product_model" : "F1056NDP26",
"product_name" : "Samsung Smart",
"product_scan_code" : "F1056NDP26",
"target_url" : ".."
]
],
"product_category" : "Washing Machine"
]
        ];
return arr_products;

}
}



