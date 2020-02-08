//
//  ViewController.swift
//  AutolayoutExample
//
//  Created by P1506 on 2020/02/04.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    //landscape
    @IBOutlet weak var imageView: UIImageView!
    
    var items = [IdolModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadJsonData()
        
        setupScreen()
    }


    private func loadJsonData() {
        
        guard let path = Bundle.main.path(forResource: "girl_group", ofType: "json") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
            let top = json as! Dictionary<String, [Any]>
            
            guard let idols = top["girl_group"] else {
                return
            }
            
            for idol in idols {
                if let item = idol as? [String:String] {
                    let model = IdolModel(item)
                    items.append(model)
                }
            }
        } catch {
            print(error)
        }
    }
    
    private func setupScreen() {
        
        label.text = "걸그룹 멤버이름은?"
        
        for (index, button) in buttonCollection.enumerated() {
         
            let item = items[index]
            button.setImage(UIImage(named: item.image), for: .normal)
            button.tag = 100 + index
        }
        
        if let imageName = items.last?.image {
            imageView.image = UIImage(named: imageName)
        }
    }
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        //
        let model = items[sender.tag - 100]
        label.text = model.girlGroup + "(\(model.name))"
    }
}

