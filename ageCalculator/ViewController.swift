//
//  ViewController.swift
//  ageCalculator
//
//  Created by Arlo Erdaka on 16/07/19.
//  Copyright © 2019 Arlo Erdaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnCalculateHandler(_ sender: Any) {
        //1 - get selected date from date picker
        let birthDate = self.datePicker.date
        
        //2 - get today date
        let today = Date()
        
        //3 - create an instance of the user's current calendar
        let calendar = Calendar.current
        
        //4 - use calendar to get difference between two dates
        let components = calendar.dateComponents([.month], from: birthDate, to: today)
        
//        let ageYears = components.year
        let ageMonths = components.month
//        let ageDays = components.day
        
        //5 - display age in label
//        self.lblAge.text = "\(ageYears!) years, \(ageMonths!) months, \(ageDays!) days"
        self.lblAge.text = "\(ageMonths!) months"
        
    }
    

}

