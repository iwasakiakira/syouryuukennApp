//
//  ViewController.swift
//  syouryuukennApp
//
//  Created by いわし on 2020/09/09.
//  Copyright © 2020 iwasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animeArray : Array<UIImage> =  []
        
@IBOutlet weak var animeview: UIImageView!
    
    @IBAction func startBuutton(_ sender: Any) {
    animeview.animationImages = animeArray
    // 1.5秒間隔
        animeview.animationDuration = 0.78
    // 1回繰り返し
    animeview.animationRepeatCount = 1
    // アニメーションを開始
    animeview.startAnimating()
    }
  override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
 // 立ち攻撃の画像を配列に格納
     while let attackImage = UIImage(named: "attak1\(animeArray.count+1)") {
         animeArray.append(attackImage)
     }
  }
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }
}
    

    
    
    
   
