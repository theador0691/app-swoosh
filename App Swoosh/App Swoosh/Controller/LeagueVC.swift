//
//  LeagueVC.swift
//  App Swoosh
//
//  Created by Andrew Taylor on 02/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func onNextTouch(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

}


