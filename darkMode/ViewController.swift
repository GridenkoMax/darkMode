//
//  ViewController.swift
//  darkMode
//
//  Created by Maxim Gridenko on 27.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.textColor = .blue
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if #available(iOS 12.0, *){
            
            if self.traitCollection.userInterfaceStyle == .dark{
                self.lbl.text = "Dark mode!"
            } else {
                self.lbl.text = "This is Light mode!"
            }
        }
    }

}
