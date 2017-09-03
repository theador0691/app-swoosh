//
//  LeagueVC.swift
//  App Swoosh
//
//  Created by Andrew Taylor on 02/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet var ddw: BorderButton!
    var player: Player!
    
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBOutlet var nextBtn: BorderButton!
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")

    }
    
  
    @IBAction func onNextTouch(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    //function to set the leagure and enable the button
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    //view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //this will try and run this statement
        if let skillVC = segue.destination as? SkillVC {
            //handing off the player variable to the skillVC player
            skillVC.player = player
        }
    }
    

}


