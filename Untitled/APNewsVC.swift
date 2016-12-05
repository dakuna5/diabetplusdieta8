//
//  APNewsVC.swift
//  Untitled
//
//  Created by alexeyweb11@gmail.com on 05/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APNewsVC : ANViewController, UITableViewDataSource, UITableViewDelegate, ANDataListDelegate  {
    
    @IBOutlet weak var aNewstablesmall: UITableView?
    open var aNewstablesmallDataList: ANDataList?;

    

    override public func awakeFromNib() -> Void {
        super.awakeFromNib();
        self.aNewstablesmallDataList = ANDataList(type: ANDataTypeRSS, filenameOrUrl: "http://feeds.feedburner.com/Mobilecrunch", delegate: self);
        self.aNewstablesmallDataList!.refresh();
    }



    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == self.aNewstablesmall) {
            return Int(self.aNewstablesmallDataList!.count());
        }
        return 0;
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (tableView == self.aNewstablesmall) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell8") as! APCell8;
            cell.dataDictionary = self.aNewstablesmallDataList!.item(at: UInt(indexPath.row)) as NSDictionary?;
            cell.delegate = self;
            return cell;
        }
        return UITableViewCell();
    }

    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (tableView == self.aNewstablesmall) {
            return 80.0;
        }
        return 0.0;
    }

    public func dataListDidFinishLoading(_ dataList: ANDataList) {
        if (dataList == self.aNewstablesmallDataList) {
            guard let aNewstablesmall = aNewstablesmall else {
                return
            }
            aNewstablesmall.reloadData();
        }
    }
}