//
//  ViewController.swift
//  HitungKedewasaan
//
//  Created by Faras Abiyyu Handoko on 26/05/18.
//  Copyright © 2018 Farras Doko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etInput: UITextField!
    @IBOutlet weak var lbHasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnSubmit(_ sender: Any) {
        let lahir : Int? = Int(etInput.text!)
        let total : Int = 2017 - lahir!
        if total <= 0 {
            lbHasil.textColor = UIColor.white
            lbHasil.text = "Umur Kamu \(total), Kamu Belum Lahir"
        } else if total >= 20 {
            lbHasil.text = "Umur Kamu \(total), Kamu Sudah Dewasa"
            lbHasil.textColor = UIColor.red
        }else if total <= 12 && total >= 5 {
            lbHasil.text = "Umur Kamu \(total), Kamu Masih Anak Anak"
            lbHasil.textColor = UIColor.yellow
        }else if total < 5 && total > 0 {
            lbHasil.text = "Umur Kamu \(total), Kamu Masih Balita"
            lbHasil.textColor = UIColor.green
        }else{
            lbHasil.text = "Umur Kamu \(total), Kamu Remaja"
            lbHasil.textColor = UIColor.orange
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

