//
//  ViewController.swift
//  TempConverter
//
//  Created by edgars.vasiljevs on 15/11/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelTempCelsius: UILabel!
    @IBOutlet weak var labelTempOther: UILabel!
    @IBOutlet weak var changer: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
        let tempC = round((slider.value) *  100) / 100
        labelTempCelsius.text = "\(tempC) °C"
        if changer.selectedSegmentIndex == 0{
            let cToF = slider.value * 9/5 + 32
            labelTempOther.text = "\(cToF) °F"}
                else{
                    let cToK = round((slider.value + 273.15) * 100) / 100
                    labelTempOther.text = "\(cToK) °K"
                }
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        sliderValueChanged(slider ?? 0)
    }
}

