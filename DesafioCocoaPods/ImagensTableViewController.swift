//
//  ImagensTableViewController.swift
//  DesafioCocoaPods
//
//  Created by Swift on 16/01/2018.
//  Copyright © 2018 Corporate. All rights reserved.
//

import UIKit
import SDWebImage

class ImagensTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! CatsTableViewCell
        let indice = indexPath.row
        let categoria = "city"
        // Resgatar o scale da tela (por causa das diferentes resoluções de iPhone, @1x, @2x, @3x, @26x)
        let escalaTela = UIScreen.main.scale
        let largura = Int(celula.imageViewCats.frame.width * escalaTela)
        let altura = Int(celula.imageViewCats.frame.height * escalaTela)
        
        let myURL = URL(string: "https://lorempixel.com/\(largura)/\(altura)/\(categoria)/\(indice)/")
        
        celula.imageViewCats.sd_setImage(with: myURL)
                
        return celula
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 167
    }

}
