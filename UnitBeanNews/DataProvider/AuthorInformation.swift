//
//  AuthorInformation.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 14.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import Foundation

struct AuthorInformation {
    var authorName : String?
    var authorSurname: String?
    var authorMiddleName: String?
    var birthDay = Date.from(day: 01, month: 01, year: 1990)
    var booksList: [BookInformation] = []
    
    
    
 
    
    
    init() {
        authorName = ""
         authorSurname = ""
         authorMiddleName = ""
       //  birthDay = Date
        booksList = []
        
        
    }
    init(authorName: String, authorSurname: String, authorMidleName: String?, birthDay: Date, booksList: [BookInformation]) {
        
        self.authorName = authorName
        self.authorSurname = authorSurname
        self.authorMiddleName = authorMidleName
        self.birthDay = birthDay
        self.booksList  = booksList
        
    }
    
    func getAuthorInfo() {
        
    }
    
    
    
}


