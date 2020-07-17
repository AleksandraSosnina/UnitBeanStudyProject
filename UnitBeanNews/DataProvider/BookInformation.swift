//
//  BookInformation.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 14.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import Foundation

struct BookInformation {
var bookTitle: String?
var bookDescription: String?
var bookAuthor: AuthorInformation?
    
    init() {
         bookTitle = ""
         bookDescription = ""
        bookAuthor = AuthorInformation ()
        
        
    }
   
    init(bookTitle: String, bookDescription: String) {
        
    }
    
    func getBookInfo() {

}
 }
