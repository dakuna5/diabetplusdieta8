//
//  APUsercell.swift
//  Untitled
//
//  Created by alexeyweb11@gmail.com on 05/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APUsercell : UITableViewCell {
    
    weak open var delegate: ANCustomViewDelegate?
    @IBOutlet weak var label19: UILabel?
    @IBOutlet weak var view8: UIView?
    @IBOutlet weak var view8Image16: UIImageView?
    @IBOutlet weak var label20: UILabel?

    open var dataDictionary: NSDictionary? {
        didSet {
            self.label19!.text = self.dataDictionary!.an_object(forJsonPath: "Full Name") as! String?
            self.view8Image16!.anImageNameOrUrl = self.dataDictionary!.an_object(forJsonPath: "Image") as! String?
            self.label20!.text = self.dataDictionary!.an_object(forJsonPath: "Username") as! String?
        }
    }

}