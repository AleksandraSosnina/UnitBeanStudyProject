//
//  UnitBeanNewsViewController.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 08.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import UIKit

class UnitBeanNewsViewController: UIViewController {
    
    
    
    @IBOutlet weak var newsTableView: UITableView!
    @IBOutlet weak var downloanMoreNews: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        customizeTableView()
    }
    
    func customizeTableView() {
        
        
        newsTableView.register(UINib(nibName:"UnitBeanNewsTableViewCell", bundle: nil), forCellReuseIdentifier: "UnitBeanNewsTableViewCell")
        
      
       }
    var dataProvider = UnitBeanAuthorDataProvider()
        
    }
    


extension UnitBeanNewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    //
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)-> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 3
            { return 150 }
        }
        if indexPath.section == 1 {
            if indexPath.row == 3
            { return  300 }
        }
        
        if indexPath.section == 2 {
            if indexPath.row == 2
            {return 300}
        }
        
        
        return 300;
        
    }
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
        
    }
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {


        
        return "Секция \(section)"
        
    
    }
    
    
   // func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     //   if section == 0 {return 3}
       // else if section == 1 {return 3}
       // else if section == 2 {return 2}
        
      //  else {return 1}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataProvider.AboutAuthor.count

        
    }
   
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UnitBeanNewsTableViewCell", for: indexPath) as! UnitBeanNewsTableViewCell
            
            cell.set(object: dataProvider.AboutAuthor[indexPath.row] )
            
            
            return cell
        }
        if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "UnitBeanNewsTableViewCell", for: indexPath) as! UnitBeanNewsTableViewCell
            
             cell.set(object: dataProvider.AboutAuthor[indexPath.row] )
            
            return cell
        }
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UnitBeanNewsTableViewCell", for: indexPath) as! UnitBeanNewsTableViewCell
           
              cell.set(object: dataProvider.AboutAuthor[indexPath.row] )
            return cell
        }
        
        
        
       return UITableViewCell()
        
    }
        
    }
   


