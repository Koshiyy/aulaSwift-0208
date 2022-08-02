//
//  ViewController.swift
//  Exemplo1 Table View
//
//  Created by Rodrigo Koshiyama on 02/08/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var minhaTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = "Teste..."
        celula.imageView?.image = UIImage(named: "corinthians.png")
        celula.detailTextLabel?.text = "blablabla"
        celula.accessoryType = 
        return celula
    }
}

