//
//  ViewController.swift
//  MyJanken
//
//  Created by 石澤大輔 on 2020/03/06.
//  Copyright © 2020 石澤大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    //ジャンケンの手
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        var newAnswerNumber = 0
        
        repeat {
            
            //0,1,2の間でランダムな数字を算出
            newAnswerNumber = Int.random(in: 0..<3)
            
            //前回とは異なる結果の時、repeatを抜ける
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {                          //グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
            
        } else if answerNumber == 1 {                   //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
            
        }else if answerNumber == 2 {                    //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
    }
    

}

