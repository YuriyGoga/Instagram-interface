//
//  FeedstoriesSetCell.swift
//  Instagramm
//
//  Created by FILIN INTEND on 17.05.2023.
//

import SnapKit
import UIKit

class FeedstoriesSetCell: UITableViewCell {
//MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialaze()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//MARK: - Private properties
    
    
//MARK: - Public
    func configure(with info: FeedStoriesCellInfo) {
        
    }
}


//MARK: - Private methods
private extension FeedstoriesSetCell {
    func initialaze() {
        
    }
}
