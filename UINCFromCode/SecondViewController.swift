//
//  SecondViewController.swift
//  UINCFromCode
//
//  Created by Артем on 12/14/18.
//  Copyright © 2018 Артем. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SecondViewController" //вверху страницы
        self.textView.text = "testOOOOOtest"
        self.textView.sizeToFit()
        self.textView.center = self.view.center
        self.textView.backgroundColor = .red
        self.view.addSubview(textView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)       //включение анимации
        self.perform(#selector(goBack(param:)), with: nil, afterDelay: 3)  //через 5 сек автоВозврат
    }
    
    @objc func goBack(param: Any) {
        self.navigationController?.popViewController(animated: true)        //переход обратно
    }
}
