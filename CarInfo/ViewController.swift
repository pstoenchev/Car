//
//  ViewController.swift
//  CarInfo
//
//  Created by Petar Stoenchev on 31.01.21.
//

import UIKit


// MARK: - Class Definition

final class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet private weak var carSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carSearchBar.setImage(UIImage(named: "icon"), for: .search, state: .normal)
        carSearchBar.setImage(UIImage(named: "camicon"), for: .bookmark, state: .normal)
        // Do any additional setup after loading the view.
    }


}

