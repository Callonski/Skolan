//
//  ViewController.swift
//  TableView
//
//  Created by Calle Engene on 2017-09-07.
//  Copyright © 2017 Calle Engene. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var minaNamn : [String] = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> (UITableViewCell) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "raden") as! TableViewCell
        //let secondCell = tableView.dequeueReusableCell(withIdentifier: "superraden") as! TableViewCell
        
        cell.nameLabel.text = minaNamn[indexPath.row]
        cell.numberLabel.text = "\(indexPath.row)"
        //cell?.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        minaNamn.append("Calle")
        minaNamn.append("Olle")
        minaNamn.append("Bolle")
        minaNamn.append("Snolle")
        minaNamn.append("Rolle")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

