//
//  lEAGUEvc.swift
//  Swoosh App
//
//  Created by Jose Hernandez on 10/29/18.
//  Copyright © 2018 Jose Hernandez. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Co-Ed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        } 
    }
    
    

}
