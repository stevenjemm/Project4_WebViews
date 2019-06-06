//
//  WhitelistViewController.swift
//  Project4
//
//  Created by Steven Jemmott on 05/06/2019.
//  Copyright © 2019 Lagom Experiences. All rights reserved.
//

import UIKit

class WhitelistViewController: UITableViewController {
    
    private(set) var whitelist = ["apple.com", "hackingwithswift.com", "google.com", "twitter.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Whitelist Sites"
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return whitelist.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = whitelist[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(ViewController(urlString: whitelist[indexPath.row]), animated: true)
    }
}
