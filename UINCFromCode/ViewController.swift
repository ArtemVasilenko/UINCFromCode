//
//  ViewController.swift
//  UINCFromCode
//
//  Created by Артем on 12/14/18.
//  Copyright © 2018 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displaySecondButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstViewController"
        self.displaySecondButton = UIButton(type: .system)      //иниц как системная
        self.displaySecondButton.setTitle("Second VC", for: .normal)
        self.displaySecondButton.sizeToFit()        //размер по контексту
        self.displaySecondButton.center = self.view.center      //по центру
        self.displaySecondButton.addTarget(self, action: #selector(performDisplaySecondVC(parametrSender:)), for: .touchUpInside)    //пример указания селектора (открываем другое окно)
        self.displaySecondButton.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        self.view.addSubview(self.displaySecondButton)      //добавление кнопки во вью
        
    }
    
    @objc func performDisplaySecondVC (parametrSender: Any) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        //перекидываем при нажатии кнопки из Нав в секонд
    }


}

