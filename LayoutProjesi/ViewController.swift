//
//  ViewController.swift
//  LayoutProjesi
//
//  Created by Furkan Eruçar on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {

    // Hem class içinde hem de class içinde bi func'da değişken tanımlayabiliriz ve bunlar aynı olabilir. Böyle bir durumda direk class içindeki değişkeni kullanmak için, func içinde self."değişkenİsmi diyerek func dışındaki ama class içindeki değişkeni kullanabiliriz. Fakat func içinde bi değişken tanımladıysak başına "self" yazmamıza gerek yoktur
    
    override func viewDidLoad() { //Görünüm ilk açıldığında bu fonksiyon viewcontoller'dan önce burdaki işlemler yapılır
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // Label
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 30, width: width * 0.8, height: 60)
        view.addSubview(myLabel) // Ayarlamaları yaptıktan sonra Label'in ekranda görünmesini sağlar
        
        
        // Button
        let myButton = UIButton()
        myButton.setTitle("Benim Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue , for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.65, width: 200, height: 100)
        view.addSubview(myButton) // Ayarlamaları yaptıktan sonra butonun ekranda görünmesini sağlar
        
        myButton.addTarget(self, action: #selector(ViewController.benimFonksiyonum), for: UIControl.Event.touchUpInside)
        
    }

    @IBAction func benimFonksiyonum() { // @objc veya @IBAction yazabiliriz
        print("Kullanıcı buttuon'a tıkladı")
    }
    

}

