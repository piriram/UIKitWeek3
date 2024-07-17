//
//  ListCollectionViewCell.swift
//  UIKitWeek3
//
//  Created by ram on 7/4/24.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var star: UIImageView!
    
    func configure(_ list: ListModel) {
        title.text = "\(list.name)"
        imageView.image = UIImage(named: list.imageName)
        
    }
}
