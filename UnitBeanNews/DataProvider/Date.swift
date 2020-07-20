//
//  Date.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 15.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import Foundation


extension Date {
  static func from(day: Int, month: Int, year: Int) -> Date? {
      let calendar = Calendar(identifier: .gregorian)
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
   return calendar.date(from: dateComponents) ?? nil
        
        
   }
  }

