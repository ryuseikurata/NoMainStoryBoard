//
//  ViewController.swift
//  CodeOnly
//
//  Created by 倉田　隆成 on 2018/05/29.
//  Copyright © 2018年 倉田　隆成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //画面サイズを初期値として'MainView'クラスを'mainView'としてインスタンス化します
        let mainView = MainView(frame: self.view.bounds)
        
        //MainViewサイズ自動調整用に'autoresizingMask"を設定
        mainView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        //MainViewオブジェクトを表示
        self.view.addSubview(mainView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

