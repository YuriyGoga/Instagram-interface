//
//  FeedStoriesItemCellInfo.swift
//  Instagramm
//
//  Created by FILIN INTEND on 16.05.2023.
//
import UIKit


struct FeedStoriesItemCellInfo {
    let image: UIImage
    let userName: String
    let isAddButtonVisible: Bool
    let isNewStory: Bool
    
}

typealias FeedStoriesCellInfo = [FeedStoriesItemCellInfo]
