//
//  ViewController.swift
//  SlidersAndProgressBars
//
//  Created by jose ramirez on 5/31/17.
//  Copyright © 2017 Jose Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progBar: UIProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func didMoveSlider(_ sender: UISlider) {
        /*1.)we want the progresss bar update according to the slider value*/
       // progBar.progress = sender.value   //easiest way to do it but not 100% accurate
        
    /*what if you cutomize the slider values , so say you have a slider that is min:0 -> max 10*/
     //we just have to get the percentage that the slider has been moved
        let percent:Float = sender.value / sender.maximumValue
        progBar.progress = percent
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

