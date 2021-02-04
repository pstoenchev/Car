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
    @IBOutlet private weak var registerLabel: UILabel! {
        didSet {
            registerLabel.layer.cornerRadius = 7
            registerLabel.layer.masksToBounds = true
        }
    }
    
    let defaults = UserDefaults.standard
    
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
            defaults.set(data, forKey: "imageVW")
        } else {
            guard  let storageImage = UserDefaults.standard.data(forKey: "imageVW") else { return }
            imageView.image = UIImage(data: storageImage)
        }
    }
}
