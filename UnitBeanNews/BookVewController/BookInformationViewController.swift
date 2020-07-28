//
//  BookViewController.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 21.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import UIKit
import Foundation

class BookViewController: UIViewController {
    
    @IBOutlet weak var bookTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookTableView.delegate = self
        bookTableView.dataSource = self
    }
    
    func customizeTableView() {
        bookTableView.register(UINib(nibName: <#T##String#>, bundle: <#T##Bundle?#>), forCellReuseIdentifier: <#T##String#>)
    }
    
    extension BookViewController: UITableViewDataSource, UITableViewDelegate {
        
    }
    
    
    
        
    
        
    }
    

