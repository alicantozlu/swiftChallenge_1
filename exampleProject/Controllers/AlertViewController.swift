//
//  AlertViewController.swift
//  exampleProject
//
//  Created by Ali Can Tozlu on 16.04.2022.
//

import UIKit

class AlertViewController: UIViewController {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var fillerTopView: UIView!
    @IBOutlet var contextView: UIView!
    @IBOutlet var fillerBttomView: UIView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var contextLabel: UILabel!
    
    static var titleMessage:String = ""
    static var textMessage:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = AlertViewController.titleMessage
        contextLabel.text = AlertViewController.textMessage

        containerView.backgroundColor = .clear
        fillerTopView.backgroundColor = .clear
        fillerBttomView.backgroundColor = .clear
        contextView.cornerConfigure(cornerRadius: 5, borderColor: UIColor.clear.cgColor, borderWidth: 0)
    }
    
}

