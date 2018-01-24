//
//  ViewController.swift
//  MemeMeApp
//
//  Created by Max Boguslavskiy on 25/01/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePickerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pickAnImage(_ sender: Any) {
        let pickerController = UIImagePickerController()
        present(pickerController, animated: true, completion: nil)
    }
    
}

