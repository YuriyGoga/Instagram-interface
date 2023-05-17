//
//  FeedPostItemInfo.swift
//  Instagramm
//
//  Created by FILIN INTEND on 17.05.2023.
//

import UIKit

struct FeedPostItemInfo {
    let userImage: UIImage
    let userName: String
    let postSubtitle: String
    let postImage: UIImage
    let numberOfLikes: Int
    let comment: CommenShortInfo?
    
}

struct CommenShortInfo {
    let userName: String
    let commentText: String
}
