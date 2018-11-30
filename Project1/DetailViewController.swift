//
//  DetailViewController.swift
//  Project1
//
//  Created by Evgeniy Ryshkov on 29/11/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import Cocoa

class DetailViewController: NSViewController {

    @IBOutlet weak var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func imageSelected(name: String) {
        imageView.image = NSImage(named: name)
    }
}
