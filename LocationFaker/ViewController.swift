//
//  ViewController.swift
//  LocationFaker
//
//  Created by Daniel Park on 10/23/18.
//  Copyright © 2018 shsmobiledeveloper. All rights reserved.
//

//all the imports
import Foundation
import UIKit

class ViewController: UIViewController {
    
    //calls the labels and progress view
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    
    //calls the function timor
    var timer = Timer()
    
    
    @IBAction func start(_ sender: Any) {
        status.text = "Status: Loading..."
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func update(){
        progress.progress += 0.05
        if (progress.progress == 1.0){status.text = "Status: Complete"}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
