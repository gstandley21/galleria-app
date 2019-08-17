//
//  OpeningVC.swift
//  Galleria
//
//  Created by Elizabeth Mieczkowski on 8/16/19.
//  Copyright © 2019 Elizabeth Mieczkowski and Gemma Standley. All rights reserved.
//

import UIKit

class OpeningVC: UIViewController {

    var tanSquareLabel : UILabel!
    var logoLabel : UILabel!
    var pinkLine : UILabel!
    var descrLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        let lightPink = UIColor(red : 0.73, green : 0.55, blue : 0.58, alpha : 1.0)
        let tan = UIColor(red:0.91, green:0.86, blue:0.83, alpha:1.0)
        let darkBrown = UIColor(red:0.28, green:0.16, blue:0.13, alpha:1.0)
        
        view.backgroundColor = lightPink

        tanSquareLabel = UILabel()
        tanSquareLabel.translatesAutoresizingMaskIntoConstraints = false
        tanSquareLabel.backgroundColor = tan
        view.addSubview(tanSquareLabel)
        
        logoLabel = UILabel()
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        logoLabel.textColor = darkBrown
        logoLabel.text = "galleria"
        logoLabel.font = UIFont(name: "Sacramento-Regular", size: 64)
        logoLabel.textAlignment = .center
        view.addSubview(logoLabel)
        
        pinkLine = UILabel()
        pinkLine.translatesAutoresizingMaskIntoConstraints = false
        pinkLine.backgroundColor = lightPink
        view.addSubview(pinkLine)
        
        descrLabel = UILabel()
        descrLabel.translatesAutoresizingMaskIntoConstraints = false
        descrLabel.textColor = lightPink
        descrLabel.text = "something old & something new"
        descrLabel.font = UIFont(name: "OpenSans-Regular", size: 14)
        descrLabel.textAlignment = .center
        view.addSubview(descrLabel)
        
        setUpConstraints()
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            tanSquareLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tanSquareLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            tanSquareLabel.widthAnchor.constraint(equalToConstant: 300),
            tanSquareLabel.heightAnchor.constraint(equalToConstant: 300)
            ])
        NSLayoutConstraint.activate([
            logoLabel.topAnchor.constraint(equalTo: tanSquareLabel.topAnchor, constant: 73),
            logoLabel.widthAnchor.constraint(equalToConstant: 203),
            logoLabel.heightAnchor.constraint(equalToConstant: 101),
            logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            pinkLine.topAnchor.constraint(equalTo: tanSquareLabel.topAnchor, constant: 150),
            pinkLine.leadingAnchor.constraint(equalTo: tanSquareLabel.leadingAnchor, constant: 99),
            pinkLine.widthAnchor.constraint(equalToConstant: 123),
            pinkLine.heightAnchor.constraint(equalToConstant: 1)
            ])
        NSLayoutConstraint.activate([
            descrLabel.topAnchor.constraint(equalTo: tanSquareLabel.topAnchor, constant: 174),
            descrLabel.widthAnchor.constraint(equalToConstant: 255),
            descrLabel.heightAnchor.constraint(equalToConstant: 61),
            descrLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }

}
