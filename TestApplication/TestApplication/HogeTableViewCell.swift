//
//  HogeTableViewCell.swift
//  TestApplication
//
//  Created by jaeeun on 2020/01/26.
//  Copyright © 2020 archive-asia. All rights reserved.
//

import UIKit

class HogeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        titleLabel.backgroundColor = .clear
        descLabel.backgroundColor = .clear
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(imageName: String, title: String, desc: String) {
        
        //UI데이타 갱신
        iconImageView.image = UIImage(named: imageName)
        titleLabel.text = title
        descLabel.text = desc
        
    }

}
