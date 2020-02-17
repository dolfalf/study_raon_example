//
//  ViewController.swift
//  WebAPISample
//
//  Created by P1506 on 2020/02/17.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.[
        
        
        let client = GitHubClient()
        
        let request = GitHubAPI.SearchRepositories(body: nil, keyword: "aaa")
        
        client.send(request: request) { result in
            switch result {
            case let .success(response):
                for item in response.items {
                    print(item)
                }
            case let .failure(error):
                print(error)
            }
        }
    }


}

