//
//  SecondViewController.swift
//  CarInfo
//
//  Created by Petar Stoenchev on 31.01.21.
//

import UIKit


// MARK: - Class Definition

final class SecondViewController: UIViewController {
    
    /// Register number of vehicles.
    @IBOutlet weak var registerLabel: UILabel! {
        didSet {
            registerLabel.layer.cornerRadius = 7
            registerLabel.layer.masksToBounds = true
        }
    }
    
    /// Image get from server.
    @IBOutlet private weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadPhoto()
    }
}

// MARK: - Actions

extension SecondViewController {
    
   private func downloadPhoto(){
        guard let url = URL(string: "https://www.jimbars.co.uk/wp-content/uploads/2020/01/vw-logo-1.png") else { return }
        
        if let data = try? Data(contentsOf: url) {
            imageView.image = UIImage(data: data)
        }
    }
}
