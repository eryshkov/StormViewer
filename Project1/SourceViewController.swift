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
    
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get a list of all files in our bundle's resource path
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        // loop over each file we found
        for item in items {
            // if this item starts with "nssl" add it to our array
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
    
}

extension SourceViewController: NSTableViewDataSource, NSTableViewDelegate {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        guard let cell = tableView.makeView(withIdentifier: tableColumn!.identifier, owner: self) as? NSTableCellView else { return nil }
        cell.textField?.stringValue = pictures[row]
        
        return cell
    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        guard tableView.selectedRow != -1 else {
            return
        }
        guard let splitVC = self.parent else {
            return
        }
        if let detail = splitVC.children[1] as? DetailViewController {
            detail.imageSelected(name: pictures[tableView.selectedRow])
        }
    }
}
