//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by YASIN AKCA on 16.04.2020.
//  Copyright © 2020 YASIN AKCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "james.png")
        nameLabel.text = "James Hetfield"
        
        imageView.isUserInteractionEnabled = true
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        imageView.addGestureRecognizer(recognizer)
    }
    
    @objc func changeImage() {
        if isJames == true {
            imageView.image = UIImage(named: "ulrich.jpg")
            isJames = false
            nameLabel.text = "Lars Ulrich"
        }else {
            imageView.image = UIImage(named: "james.jpg")
            isJames = true
            nameLabel.text = "James Hetfield"
        }
    }

}

