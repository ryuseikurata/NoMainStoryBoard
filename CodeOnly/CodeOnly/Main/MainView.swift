//
//  MainView.swift
//  CodeOnly
//
//  Created by 倉田　隆成 on 2018/05/29.
//  Copyright © 2018年 倉田　隆成. All rights reserved.
//

import UIKit

class MainView: UIView {

    let mainLabel: UILabel!
    
    override init(frame: CGRect) {
        // 'mainLabel"を作ります
        self.mainLabel = UILabel()
        
        //mainLabelの表示テキストを設定します
        self.mainLabel.text = "Hello World"
        
        //mainlabelの表示テキストのセンタリングを設定します
        self.mainLabel.textAlignment = .center
        
        //mainLabelの設定が終わりましたので、親クラスを初期化します
        super.init(frame: frame)
        
        //MainViewの背景色を白に設定します
        self.backgroundColor = .white
        
        //MainViewにmainLabelを表示します
        self.addSubview(mainLabel)
        
    }
    override func layoutSubviews() {
        //必ず、superのlayOutSubViewを呼び出す
        super.layoutSubviews()
        
        //'mainLabel'がほしいサイズを自分のサイズから'sizeThatFits"を取り出す
        let labelSize = self.mainLabel.sizeThatFits(self.bounds.size)
        
        //'mainLabel'を真ん中に置くように、原点座標を先ほど取得したサイズと自分のサイズから取り出します。
        let x = (self.bounds.width - labelSize.width) / 2
        let y = (self.bounds.height - labelSize.height) / 2
        let labelOrigin = CGPoint(x: x, y: y)
        
        //mainLabelのレイアウトはframeに原点座標とサイズで代入して決めます
        self.mainLabel.frame = CGRect(origin: labelOrigin, size: labelSize)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
