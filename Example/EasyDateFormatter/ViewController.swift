//
//  ViewController.swift
//  EasyDateFormatter
//
//  Created by matiasdim on 03/12/2022.
//  Copyright (c) 2022 matiasdim. All rights reserved.
//

import UIKit
import EasyDateFormatter

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let currentDate = Date()
        let localeID = "es"
        let stringFormat = "EEEE, MMM d, yyyy"
        let formatterConfig = FormatterConfiguration(format: stringFormat, locale: localeID)
        let stringDate = currentDate.toString(withConfiguration: formatterConfig)
        let alertController = UIAlertController(title: "Current date", message: "Current Date in '\(localeID)' for the format '\(stringFormat)' is: \n\n  \(stringDate)", preferredStyle: .alert)
        
        showDetailViewController(alertController, sender: nil)
    }
}

