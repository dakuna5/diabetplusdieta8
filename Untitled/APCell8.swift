//
//  APCell8.swift
//  Untitled
//
//  Created by alexeyweb11@gmail.com on 05/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APCell8 : UITableViewCell {
    
    weak open var delegate: ANCustomViewDelegate?
    @IBOutlet weak var image12: UIImageView?
    @IBOutlet weak var label14: UILabel?
    @IBOutlet weak var label15: UILabel?
    @IBOutlet weak var label17: UILabel?

    open var dataDictionary: NSDictionary? {
        didSet {
            self.image12!.anImageNameOrUrl = self.dataDictionary!.an_object(forJsonPath: "image") as! String?
            self.label14!.text = self.dataDictionary!.an_object(forJsonPath: "title") as! String?
            self.label15!.text = self.dataDictionary!.an_object(forJsonPath: "author") as! String?
            self.label17!.text = self.dataDictionary!.an_object(forJsonPath: "publishDate") as! String?
        }
    }

}