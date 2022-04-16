//
//  ViewController.swift
//  exampleProject
//
//  Created by Ali Can Tozlu on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var contextContainerView: UIView!
    @IBOutlet var innerContextContainerView: UIView!
    
    @IBOutlet var leftContainerView: UIView!
    @IBOutlet var spaceView: UIView!
    @IBOutlet var rightContainerView: UIView!
    
    @IBOutlet var addButton: UIButton!
    
    @IBOutlet var inputTextLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contextContainerView.cornerConfigure(cornerRadius: 10, borderColor: UIColor(red: 1, green: 175/255, blue: 131/255, alpha: 1) as! CGColor, borderWidth: 1)
        contextContainerView.backgroundColor = .white
        innerContextContainerView.backgroundColor = .white
        
        leftContainerView.backgroundColor = .white
        leftContainerView.cornerConfigure(cornerRadius: 5, borderColor: UIColor(red: 1, green: 175/255, blue: 131/255, alpha: 1) as! CGColor, borderWidth: 1)
        
        spaceView.backgroundColor = .clear
        
        rightContainerView.cornerConfigure(cornerRadius: 5, borderColor: UIColor(red: 51/255, green: 193/255, blue: 234/255, alpha: 1) as! CGColor, borderWidth: 1)
    }
    
    @IBAction func addButtonAction(_ sender: Any) {
        if(inputTextLabel.text == "Ali Can"){
            
            let alertVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "alertIdentity") as! AlertViewController
            alertVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alertVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            
            AlertViewController.titleMessage = "Tebrikler"
            AlertViewController.textMessage = "123,00 TL indiriminiz tanımlandı!"
            
            self.present(alertVC, animated: true, completion: nil)
        }else{
            
            let alertVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "alertIdentity") as! AlertViewController
            alertVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alertVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            
            AlertViewController.titleMessage = "Girdiğiniz Kod Geçerli Değil!"
            AlertViewController.textMessage = "Hediye kodunu hatalı girmiş olabilirsiniz veya kullandığınız kodun geçerlilik süresi dolmuş olabilir."
            
            self.present(alertVC, animated: true, completion: nil)
        }
    }
}

