//
//  LeagueVC.swift
//  App Swoosh
//
//  Created by Andrew Taylor on 02/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTouch(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    
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
