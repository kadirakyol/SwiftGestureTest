//
//  ViewController.swift
//  GestureTest
//
//  Created by Kadir Akyol on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var isMatrix = true

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
       
        
        if isMatrix == true {
            imageView.image = UIImage(named: "matrix2")
            myLabel.text = "Matrix 2 'ye geçtiniz.."
            isMatrix = false
        } else {
            imageView.image = UIImage(named: "matrix")
            myLabel.text = "Matrix 1 'e geçtiniz.."
            isMatrix = true
        }
        
       
        
        
    }
    



}

