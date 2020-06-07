//
//  SettingsViewController.swift
//  ColorScheme
//
//  Created by Omair Qazi on 5/25/20.
//  Copyright © 2020 Omair Qazi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var settingsTitleSwatch: UIView!
    
    @IBOutlet weak var settingsBodySwatch: UIView!
    
    @IBOutlet weak var settingsTextSwatch: UIView!
    
    @IBOutlet weak var settingsSelectedLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func editTitle(_ sender: Any) {
        selection = selectedSettings.title
        updateSliderPosition()
        settingsSelectedLabel.text = "Title Color Settings"
    }
    
    @IBAction func editBody(_ sender: Any) {
        selection = selectedSettings.body
        updateSliderPosition()
        settingsSelectedLabel.text = "Body Color Settings"
    }
    
    @IBAction func editText(_ sender: Any) {
        selection = selectedSettings.text
        updateSliderPosition()
        settingsSelectedLabel.text = "Text Color Settings"
    }
    
    @IBAction func editSlider(_ sender: UISlider) {
        updateColorSettings()
    }
    
    enum selectedSettings {
        case title, body, text
    }
    
    //Shows you what is selected on the slider.
    var selection = selectedSettings.title
    
    //This allows you to access all the data generated in the Settings file.
    var settings: Settings!
    
    func updateSwatches() {
        settingsTitleSwatch.backgroundColor = settings.title
        settingsBodySwatch.backgroundColor = settings.body
        settingsTextSwatch.backgroundColor = settings.text
        
    }
    
    func updateSliderPosition() {
        switch selection {
        case .title:
            redSlider.value = Float(settings.title.rgba.red)
            greenSlider.value = Float(settings.title.rgba.green)
            blueSlider.value = Float(settings.title.rgba.blue)
            
        case .body:
            redSlider.value = Float(settings.body.rgba.red)
            greenSlider.value = Float(settings.body.rgba.green)
            blueSlider.value = Float(settings.body.rgba.blue)
        
        case .text:
            redSlider.value = Float(settings.text.rgba.red)
            greenSlider.value = Float(settings.text.rgba.green)
            blueSlider.value = Float(settings.text.rgba.blue)
        }
    }
    
    func updateColorSettings() {
        let newColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        switch selection {
        case .title:
            settings.title = newColor
        case .body:
            settings.body = newColor
        case .text:
            settings.text = newColor
        }
        updateSwatches()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Call the update functions when the view loads.
        updateSwatches()
        //Call the slider position
        updateSliderPosition()
    }
   

}
