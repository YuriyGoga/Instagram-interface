//
//  LogoView.swift
//  Instagramm
//
//  Created by FILIN INTEND on 14.05.2023.
//

import SnapKit
import UIKit

class LogoView: UIView {
    
//MARK: - Init
    
    init() {
        super.init(frame: .zero)
        initialaze()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Private Constants
    private enum UIConstants {
        static let logoWight: CGFloat = 104
        static let logoHeight: CGFloat = 30
    }
    
//MARK: - Private properties
    private let imageView: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "LogoInstagram")
        return view
    }()
}

//MARK: - Private methods

private extension LogoView {
    func initialaze() {
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIConstants.logoWight)
            make.height.equalTo(UIConstants.logoHeight)
        }
    }
}
