//
//  ViewController.swift
//  Animation
//
//  Created by 弘田諒 on 2019/09/19.
//  Copyright © 2019 Ryo Hirota. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let animationView = AnimationView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let animation = Animation.named("9512-boat")
        
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.backgroundColor = UIColor.yellow
        view.addSubview(animationView)
        view.sendSubviewToBack(animationView)
        animationView.backgroundBehavior = .pauseAndRestore
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        animationView.setContentCompressionResistancePriority(.fittingSizeLevel, for: .horizontal)
        
        animationView.loopMode = .loop
        animationView.play()
    }
}
