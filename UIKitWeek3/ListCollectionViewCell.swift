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
    @IBOutlet weak var star: UIButton!
    private var isStarFilled: Bool = false
    
    @IBAction func starBtn(_ sender: Any) {
        isStarFilled.toggle()
        let imageName = isStarFilled ? "star.fill" : "star"
        star.setImage(UIImage(systemName: imageName), for: .normal)
    }
    @IBAction func starTapped(_ sender: Any) {
        isStarFilled.toggle()
        let imageName = isStarFilled ? "star.fill" : "star"
        star.setImage(UIImage(systemName: imageName), for: .normal)
        
    }
    func configure(_ list: ListModel) {
        title.text = "\(list.name)"
        imageView.image = UIImage(named: list.imageName)
        star.setImage(UIImage(systemName: "star"), for: .normal)
        star.setTitle("", for: .normal)
        star.tintColor = .systemYellow
        isStarFilled = false
    }
}
