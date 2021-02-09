//
//  ViewController.swift
//  CarInfo
//
//  Created by Petar Stoenchev on 31.01.21.
//

import UIKit


// MARK: - Class Definition

final class ViewController: UIViewController {
    
    @IBOutlet private weak var carSearchBar: UISearchBar!
    
    override func viewWillAppear(_ animated: Bool) {
        carSearchBar.searchTextField.backgroundColor = .white
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        carSearchBar.setImage(UIImage(named: "icon"), for: .search, state: .normal)
        carSearchBar.setImage(UIImage(named: "camicon"), for: .bookmark, state: .normal)
    }
}

// MARK: - User Action

extension ViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
