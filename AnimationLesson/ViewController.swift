//
//  ViewController.swift
//  AnimationLesson
//
//  Created by Rahmadani Pratiwi on 17/05/19.
//  Copyright © 2019 Rahmadani Pratiwi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myNewView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        myNewView.backgroundColor = UIColor.blue
        view.addSubview(myNewView)
        
        UIView.animate(withDuration: 3) {
//            print(myNewView.frame)
            myNewView.frame = CGRect(x: 100, y: 300, width: 50, height: 50)
            print(myNewView.frame)
        }
        
        UIView.animate(withDuration: 3, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveLinear, animations: {
            myNewView.frame = CGRect(x: 100, y: 500, width: 50, height: 50)
            print(myNewView.frame)
        }) { (isFinished) in
             myNewView.frame = CGRect(x: 100, y: 500, width: 100, height: 100)
            print(myNewView.frame)
        }
        
        let mySecondView = UIView(frame:CGRect(x: 100, y: 100, width: 200, height: 50))
        myNewView.backgroundColor = .blue
        myNewView.alpha = 0
        
        view.addSubview(mySecondView)
        UIView.animate(withDuration: 3, delay: 0, options: [.autoreverse, .repeat], animations: {
            mySecondView.alpha = 1
        }, completion: nil)
        
        print(mySecondView.frame)
        
        
    }

}

