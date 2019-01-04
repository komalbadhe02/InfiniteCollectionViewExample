///**
/**
InfiniteCollectionViewExample
VCInfiniteCollectionViewExample.swift
Created by: KOMAL BADHE on 03/01/19
Copyright (c) 2019 KOMAL BADHE
*/

import UIKit

class VCInfiniteCollectionViewExample : UIViewController,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate {
    
    @IBOutlet weak var tableViewObj: UITableView!
   
  
    var product_Details = NSDictionary();
    var equipmentDetailsAnimation : Bool = false;
    var categoryCount = 3;
    var entities_array = NSArray();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadExternalXib()
        // Do any additional setup after loading the view.
       
    }
    
    override func viewWillAppear(_ animated: Bool){
        
        entities_array = Product_handler().get_product_list() as NSArray ;
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadExternalXib()  {
        tableViewObj.register(UINib(nibName: "HomeCategoryTitleTableViewCell", bundle: nil), forCellReuseIdentifier: "homeCategoryTitleCellID");
        tableViewObj.register(UINib(nibName: "HomeProductGridTableViewCell", bundle: nil), forCellReuseIdentifier: "homeProductGridCellID");
        
        tableViewObj.register(UINib(nibName: "NonInfiniteCVTableViewCell", bundle: nil), forCellReuseIdentifier: "nonInfiniteCollectionVC");
        
        
    }
    
    
    //MARK:- table view datasources
    
    func numberOfSections(in tableView: UITableView) -> Int{
        
        if  entities_array.count != 0 {
            //  return 1;
            return entities_array.count;
        }
        else{
            return 0;
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2;
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "homeCategoryTitleCellID") as! HomeCategoryTitleTableViewCell
        
        let productsGridCell = tableView.dequeueReusableCell(withIdentifier: "homeProductGridCellID") as! HomeProductGridTableViewCell
        
        let productsGridCellWithOutScroll = tableView.dequeueReusableCell(withIdentifier: "nonInfiniteCollectionVC") as! NonInfiniteCVTableViewCell
        
        
        if indexPath.row == 0 {
            headerCell.viewAllButton.tag = indexPath.section;
            headerCell.viewAllButton.addTarget(self, action: #selector(viewAllButtonAction(sender:)), for: .touchUpInside);
            
            //    print(entities_array.object(at: indexPath.section) as! NSDictionary)
            headerCell.group_name_label.text = (entities_array.object(at: indexPath.section) as! NSDictionary).value(forKey: "product_category") as? String;
            
            return headerCell;
        }
        else{
            
            let entitiesArray : NSArray = NSArray(array: (entities_array.object(at: indexPath.section) as! NSDictionary).value(forKey: "entities") as! NSArray);
            
            if entitiesArray.count<=2{
                productsGridCellWithOutScroll.entities_array = NSArray(array: entitiesArray);
                productsGridCellWithOutScroll.initializeCell();
                return productsGridCellWithOutScroll;
                
                
            }
            else{
                productsGridCell.entity_detailsArr = NSMutableArray(array: entitiesArray );
                
                productsGridCell.initializeView(data: (entities_array.object(at: indexPath.section) as! NSDictionary).value(forKey: "entities") as! NSArray)
                
                return productsGridCell;
            }
            
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        
        if indexPath.row == 0 {
            return 47;
        }
        else{
            return 200;
        }
        
    }

  
    override func viewWillDisappear(_ animated: Bool){
        
    }
    
    @IBAction func viewAllButtonAction(sender : UIButton)  {
        
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let modalController = storyBoard.instantiateViewController(withIdentifier: "vcModalViewAllID") as! VCModalViewAll
//        modalController.modalPresentationStyle = .overCurrentContext
//        
//        modalController.group_details_dict = NSDictionary(dictionary: entities_array.object(at: sender.tag) as! NSDictionary)
//        //modalController.modalPresentationStyle = .popover
//        
//        modalController.modalTransitionStyle = .crossDissolve;
//        
//        // modalController.modalTransitionStyle = .coverVertical;
//        // modalController.modalTransitionStyle = .flipHorizontal;
//        tabBarController?.present(modalController, animated: true, completion: nil)
//        
        
    }
    
}
