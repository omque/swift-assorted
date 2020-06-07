//
//  DemoViewController.swift
//  ColorScheme
//
//  Created by Omair Qazi on 5/25/20.
//  Copyright © 2020 Omair Qazi. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    @IBOutlet weak var demoTitle: UILabel!
    
    @IBOutlet weak var demoBody: UILabel!
    
    var colorSettings = Settings(
        title: UIColor(red: 0.1, green: 0.4, blue: 0.8, alpha: 1),
        body: UIColor(red: 0.5, green: 0.2, blue: 0.3, alpha: 1),
        text: UIColor(red: 0.2, green: 0.8, blue: 0.5, alpha: 1))
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! SettingsViewController
        settingsVC.settings = colorSettings
    }
    
    func updateDemo() {
        demoTitle.backgroundColor = colorSettings.title
        demoBody.backgroundColor = colorSettings.body
        demoTitle.textColor = colorSettings.text
        demoBody.textColor = colorSettings.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDemo()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        updateDemo()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(false)
        navigationController?.setNavigationBarHidden(false, animated: false)           
       }

}
