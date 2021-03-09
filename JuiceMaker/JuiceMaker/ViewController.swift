//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let juiceMaker: Juice = Juice()
        do {
            _ = try juiceMaker.makeStrawberryJuice()
            print("딸기주스 나왔습니다! 맛있게 드세요!")
            print("남은 딸기 갯수: \(FruitType.strawberry.fruitStock)")
            
            _ = try juiceMaker.makeBananaJuice()
            print("바나나주스 나왔습니다! 맛있게 드세요!")
            print("남은 바나나 갯수: \(FruitType.banana.fruitStock)")
        }catch {
            print("재료가 모자라요. 재고를 수정할까요?")
        }
    }

}

