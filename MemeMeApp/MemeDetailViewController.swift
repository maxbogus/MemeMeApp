//
//  MemeDetailViewController.swift
//  MemeMeApp
//
//  Created by Max Boguslavskiy on 15/02/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    override func viewDidLoad() {
        self.memeImageView.image = meme.memedImage
    }
}
