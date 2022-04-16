//
//  ViewController.swift
//  exampleProject
//
//  Created by Ali Can Tozlu on 16.04.2022.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var contextContainerView: UIView!
    @IBOutlet var innerContextContainerView: UIView!
    
    @IBOutlet var leftContainerView: UIView!
    @IBOutlet var spaceView: UIView!
    @IBOutlet var rightContainerView: UIView!
    
    @IBOutlet var addButton: UIButton!
    @IBOutlet var inputTextLabel: UITextField!
    
    @IBOutlet var completeComtainerView: UIView!
    @IBOutlet var completeInnerContainerView: UIView!
    @IBOutlet var removeCouponButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contextContainerView.cornerConfigure(cornerRadius: 10, borderColor: UIColor(red: 54/255, green: 59/255, blue: 68/255, alpha: 0.4).cgColor, borderWidth: 1)
        contextContainerView.backgroundColor = .white
        innerContextContainerView.backgroundColor = .white
        
        leftContainerView.backgroundColor = .white
        leftContainerView.cornerConfigure(cornerRadius: 5, borderColor: UIColor(red: 54/255, green: 59/255, blue: 68/255, alpha: 0.4).cgColor, borderWidth: 1)
        
        spaceView.backgroundColor = .clear
        
        rightContainerView.cornerConfigure(cornerRadius: 5, borderColor: UIColor(red: 51/255, green: 193/255, blue: 234/255, alpha: 1).cgColor, borderWidth: 1)
        
        completeComtainerView.isHidden = true
        completeComtainerView.backgroundColor = .white
        completeComtainerView.cornerConfigure(cornerRadius: 10, borderColor: UIColor(red: 54/255, green: 59/255, blue: 68/255, alpha: 0.4).cgColor, borderWidth: 1)
        completeInnerContainerView.backgroundColor = .clear
        
        let yourAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14),
            .foregroundColor: UIColor.blue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        
        let attributeString = NSMutableAttributedString(
            string: "Kuponu Kaldır",
            attributes: yourAttributes
        )
        removeCouponButton.setAttributedTitle(attributeString, for: .normal)
    }
    
    @IBAction func addButtonAction(_ sender: Any) {
        if(inputTextLabel.text == "0213"){
            let alertVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "alertIdentity") as! AlertViewController
            alertVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alertVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            
            alertVC.delegate = self
            
            AlertViewController.titleMessage = "Tebrikler"
            AlertViewController.textMessage = "123,00 TL indiriminiz tanımlandı!"
            AlertViewController.rightCode = true
            
            self.present(alertVC, animated: true, completion: nil)
        }else{
            let alertVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "alertIdentity") as! AlertViewController
            alertVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alertVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            
            alertVC.delegate = self
            
            AlertViewController.titleMessage = "Girdiğiniz Kod Geçerli Değil!"
            AlertViewController.textMessage = "Hediye kodunu hatalı girmiş olabilirsiniz veya kullandığınız kodun geçerlilik süresi dolmuş olabilir."
            AlertViewController.rightCode = false
            
            self.present(alertVC, animated: true, completion: nil)
        }
        inputTextLabel.text = ""
    }
    
    @IBAction func removeCouponButtonActıon(_ sender: Any) {
        completeComtainerView.isHidden = true
        contextContainerView.isHidden = false
    }
}

extension ViewController: completedMessage {
    func sayCompleted(showCompleted: Bool) {
        if(showCompleted){
            completeComtainerView.isHidden = false
            contextContainerView.isHidden = true
        }
    }
}
