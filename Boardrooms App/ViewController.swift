//
//  ViewController.swift
//  Boardrooms App
//
//  Created by ashwaq almuzaini on 21/08/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eye: UIImageView!
    @IBOutlet weak var titleTxt: UILabel!
    @IBOutlet weak var jobNuTextF: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //editTeextField
        
        
        jobNuTextF.layer.cornerRadius = 8.0;
        password.layer.cornerRadius = 8.0
       
        //edit title
        titleTxt.text = "Welcome back! Glad to see you, Again!"
        titleTxt.numberOfLines = 2
        titleTxt.sizeToFit()
        
      
        
    }


   
        @IBAction func login(_ sender: Any) {
           performSegue(withIdentifier: "Login", sender:  self)

            class ViewController: UIViewController {
                var iconClick = false
                let imageicon = UIImageView()
               
                @IBOutlet  var mytextfiled: UITextField!
                override func viewDidLoad() {
                    super.viewDidLoad()
                    // Do any additional setup after loading the view.
                    
                    imageicon.image=UIImage(named: "closeEye")

                    let contentView = UIView()
                    contentView.addSubview(imageicon)
                    
                    contentView.frame = CGRect(x: 0, y: 0, width: UIImage(named: "closeEye")!.size.width, height: UIImage(named: "closeEye")!.size.height)
                    
                    imageicon.frame = CGRect(x: -10, y: 0, width: UIImage(named: "closeEye")!.size.width, height: UIImage(named: "closeEye")!.size.height)
                    
                    mytextfiled.rightView = contentView
                    mytextfiled.rightViewMode = .always
                    
                    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(TapGestureRecognizer:)))
                    
                    imageicon.isUserInteractionEnabled = true
                    imageicon.addGestureRecognizer(tapGestureRecognizer)
                }
                
                @IBAction func LoginButton(_ sender: Any) {
                    //enter app
                    performSegue(withIdentifier: "Details", sender: self)
            //        self.modalPresentationStyle = .fullScreen//
                }
                
                
                @objc func imageTapped(TapGestureRecognizer:UITapGestureRecognizer){
                    let tappedImage = TapGestureRecognizer.view as! UIImageView
                    if iconClick
                    {
                        iconClick = false
                        tappedImage.image = UIImage(named: "openEye")
                        mytextfiled.isSecureTextEntry = false
                    }
                    else{
                        iconClick = true
                        tappedImage.image=UIImage(named: "closeEye")
                        mytextfiled.isSecureTextEntry = true
                    }
                }

            }
            
        }
        //
    }


