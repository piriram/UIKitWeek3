//
//  ListModel.swift
//  UIKitWeek3
//
//  Created by ram on 7/3/24.
//

import Foundation

struct ListModel {
    let name: String
    let imageName: String
    let isFavorite: Bool
}

extension ListModel {
    static let list: [ListModel] = [
        ListModel(name: "Turtle Rock", imageName: "turtlerock", isFavorite: true),
        ListModel(name: "Silver Salmon Creek", imageName: "silversalmoncreek", isFavorite: false),
        ListModel(name: "Chilkoot Trail", imageName: "chilkoottrail", isFavorite: true),
        ListModel(name: "St. Mary Lake", imageName: "stmarylake", isFavorite: true),
        ListModel(name: "Twin Lake", imageName: "twinlake", isFavorite: false),
        ListModel(name: "Lake McDonald", imageName: "lakemcdonald", isFavorite: false),
        ListModel(name: "Charley Rivers", imageName: "charleyrivers", isFavorite: false),
        ListModel(name: "Icy Bay", imageName: "icybay", isFavorite: false),
        ListModel(name: "Rainbow Lake", imageName: "rainbowlake", isFavorite: false),
        ListModel(name: "Hidden Lake", imageName: "hiddenlake", isFavorite: false),
        ListModel(name: "Chincoteague", imageName: "chincoteague", isFavorite: false),
        ListModel(name: "Lake Umbagog", imageName: "umbagog", isFavorite: false)
    ]
}
