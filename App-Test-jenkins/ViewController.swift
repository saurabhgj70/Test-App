//
//  ViewController.swift
//  App-Test-jenkins
//
//  Created by Savrabh  on 23/10/18.
//  Copyright © 2018 Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btntextclicked(_ sender: Any) {
        lbl.text = "tested"
        lbl.accessibilityValue = "tested"
        print("test")
    }
    @IBOutlet weak var btntext: UIButton!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("test");
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

