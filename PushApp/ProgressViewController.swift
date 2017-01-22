//
//  ProgressViewController.swift
//  PushApp
//
//  Created by Poojan Dave on 1/22/17.
//  Copyright © 2017 Poojan Dave. All rights reserved.
//

import UIKit

class ProgressViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var timePeriodSegmentedControl: UISegmentedControl!
    @IBOutlet weak var dailyTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyTableView.delegate = self
        dailyTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: Any = tableView.dequeueReusableCell(withIdentifier: "dailyWorkoutCell") as! dailyTableViewCell
        
//        switch timePeriodSegmentedControl.selectedSegmentIndex {
//        case 0:
//            cell = tableView.dequeueReusableCell(withIdentifier: "dailyWorkoutCell") as! dailyTableViewCell
//        case 1:
//            cell = tableView.dequeueReusableCell(withIdentifier: "weeklyWorkoutCell") as! weeklyTableViewCell
//        case 2:
//            cell = tableView.dequeueReusableCell(withIdentifier: "monthlyWorkoutCell") as! monthlyTableViewCell
//        case 3:
//            cell = tableView.dequeueReusableCell(withIdentifier: "totalWorkoutCell") as! yearlyTableViewCell
//        default:
//            print("Something went wrong!")
//        }
        
        return cell as! UITableViewCell
        
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
