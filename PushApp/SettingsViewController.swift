//
//  SettingsViewController.swift
//  PushApp
//
//  Created by Poojan Dave on 1/22/17.
//  Copyright © 2017 Poojan Dave. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var wakeUpTimeTextField: UITextField!
    @IBOutlet weak var timerTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var pushUpTimeDatePicker: UIDatePicker!
    
    let userDefaults = UserDefaults.standard
    
    let dateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func datePickerDidSelectNewDate(_ sender: UIDatePicker) {
        
        print(sender.date)
        
        let selectedDate = sender.date
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate?.scheduleNotification(at: selectedDate)
        
        
        userDefaults.set(sender.date, forKey: "PushUpTime")
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
