//
//  SourceViewController.swift
//  Project1
//
//  Created by Evgeniy Ryshkov on 29/11/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import Cocoa

class SourceViewController: NSViewController {

    @IBOutlet weak var tableView: NSTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}

extension SourceViewController: NSTableViewDataSource, NSTableViewDelegate {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 100
    }
}
