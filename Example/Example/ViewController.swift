//
//  ViewController.swift
//  Example
//
//  Created by linto jacob on 18/07/20.
//  Copyright © 2020 linto. All rights reserved.
//

import UIKit
import LJAttributedString
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = "This is a colorful attributed string"
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)

        attributedText.apply(color: .red, subString: "This")
        attributedText.apply(color: .red, onRange: NSMakeRange(5, 4)) //Range of substring "is a"
        attributedText.apply(color: .purple, subString: "colorful")
        attributedText.apply(color: .blue, subString: "attributed")
        attributedText.apply(color: .systemOrange, subString: "string")

        // Do any additional setup after loading the view.
    }


}

