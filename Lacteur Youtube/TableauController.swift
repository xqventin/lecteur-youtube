//
//  TableauController.swift
//  Lacteur Youtube
//
//  Created by Quentin Honerchick on 30/09/2018.
//  Copyright © 2018 Quentin Honerchick. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViews: UITableView!
    
    var chansons = [Chanson]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViews.delegate = self
        tableViews.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let nozman = Chanson(artiste: "Nozman", titre: "OUVRIR DES GÉODES AVEC ALEXANDRE ASTIER !", code: "PVJunr77pGE")
        chansons.append(nozman)
        let amixem = Chanson(artiste: "Amixem", titre: "JE SUIS PAPA", code: "5ToN3JUp_rg")
        chansons.append(amixem)
        
        //ReloadData permet de recharger et mettre a jour la table view si besoin
        tableViews.reloadData()
    }
    
}
