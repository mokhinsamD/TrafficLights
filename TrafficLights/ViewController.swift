//
//  ViewController.swift
//  TrafficLights
//
//  Created by Дарина Самохина on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        yellowLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        greenLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
        
    }

    @IBAction func startButtonDidPressed() {
        startButton.setTitle("NEXT", for: .normal)

        if greenLightView.alpha == 1 {
            viewDidLoad()
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 {
            viewDidLoad()
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            viewDidLoad()
            greenLightView.alpha = 1
        } else {
            redLightView.alpha = 1
        }
        
    }
    
}

