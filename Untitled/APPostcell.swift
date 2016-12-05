//
//  APPostcell.swift
//  Untitled
//
//  Created by alexeyweb11@gmail.com on 05/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APPostcell : UITableViewCell {
    
    weak open var delegate: ANCustomViewDelegate?
    @IBOutlet weak var postimage: UIImageView?
    @IBOutlet weak var label10: UILabel?
    @IBOutlet weak var userpiccontainer: UIView?
    @IBOutlet weak var userpiccontainerUserimage: UIImageView?
    @IBOutlet weak var titlelabel: UILabel?

    open var dataDictionary: NSDictionary? {
        didSet {
            self.postimage!.anImageNameOrUrl = self.dataDictionary!.an_object(forJsonPath: "Post Image") as! String?
            self.label10!.text = self.dataDictionary!.an_object(forJsonPath: "Full Name") as! String?
            self.userpiccontainerUserimage!.anImageNameOrUrl = self.dataDictionary!.an_object(forJsonPath: "User Image") as! String?
            self.titlelabel!.text = self.dataDictionary!.an_object(forJsonPath: "Title") as! String?
        }
    }

}