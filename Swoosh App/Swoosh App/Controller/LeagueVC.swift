//
//  lEAGUEvc.swift
//  Swoosh App
//
//  Created by Jose Hernandez on 10/29/18.
//  Copyright © 2018 Jose Hernandez. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    

}
