//
//  ViewController.swift
//  TestApplication
//
//  Created by jaeeun on 2020/01/12.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hogeTableView: UITableView!
    
    private let CELL_HEIGHT = CGFloat(120)
    
    private var items = [ItemModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //테스트데이타 설정
        loadTestData()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        hogeTableView.reloadData()
    }

}

// MARK: Private
extension ViewController {
    
    private func loadTestData() {
        
        for _ in 1..<5 {
            items.append(ItemModel(imageName: "movie1", title: "살인의 추억", desc: "밥은먹고다니냐?"))
            items.append(ItemModel(imageName: "movie2", title: "위플래쉬", desc: "내가 핫바지로 보여? 니가 불었잖아."))
            items.append(ItemModel(imageName: "movie3", title: "멋진하루", desc: "돈갚아."))
            items.append(ItemModel(imageName: "movie4", title: "토르: 다크월드", desc: "지옥에서 만나자."))
            items.append(ItemModel(imageName: "movie5", title: "친절한 금자씨", desc: "너나잘하세요~"))
        }
    }
}

// MARK: UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return CELL_HEIGHT
    }
}


// MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: HogeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "hogeCell", for: indexPath) as! HogeTableViewCell
        
        let item = items[indexPath.row]
        
        cell.configureCell(imageName: item.imageName,
                           title: item.title,
                           desc: item.desc)
        return cell
    }
    
    
}
