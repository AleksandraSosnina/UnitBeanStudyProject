//
//  UnitBeanNewsTableViewCell.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 08.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import Foundation
import UIKit

class UnitBeanNewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ImageNews: UIImageView!
    @IBOutlet weak var titleNews: UILabel!
    @IBOutlet weak var authorNames: UILabel!
    @IBOutlet weak var dateNews: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    @IBOutlet weak var countLabel: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func set(object: AuthorInformation) {
        titleNews.text = object.authorName
    }
}
