//
//  FeedViewController.swift
//  Instagramm
//
//  Created by FILIN INTEND on 14.05.2023.
//
import SnapKit
import UIKit

class FeedViewController: UIViewController {
    
// MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}

// MARK: - Private methods
private extension FeedViewController {
    func initialize () {
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationItem.leftBarButtonItems = makeLeftBarButtonItems()
        navigationItem.rightBarButtonItems = makeRightBarButtonItems()
    }
    
    func makeLeftBarButtonItems() -> [UIBarButtonItem] {
        let logoBarButtonItem = UIBarButtonItem(customView: LogoView())
    let dropDownButtemItem = UIBarButtonItem(title: nil, image: UIImage(systemName: "chevron.down"), target: self, action: nil, menu: makeDropDownMenu())
    return [logoBarButtonItem, dropDownButtemItem]
    }
    
    func makeRightBarButtonItems() -> [UIBarButtonItem] {
        let addBarBatonItem = UIBarButtonItem(image: UIImage(systemName: "plus.app"), style: .plain, target: self, action: #selector(didTapPlusButton))
        let directBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "paperplane"), style: .plain, target: self, action: #selector(didTapDirectButton))
        return [directBarButtonItem, addBarBatonItem]
    }
    
    @objc func didTapPlusButton() {
        
    }
    
    @objc func didTapDirectButton() {
        
    }
    
    func makeDropDownMenu() -> UIMenu {
    let subsItem = UIAction(title: "Подписки", image: UIImage(systemName: "person.2")) { _ in (print("Sabs"))}
        let favsItem = UIAction(title: "Избранное", image: UIImage(systemName: "star")) { _ in print("Favorites")}
        return UIMenu(title: "", children: [subsItem, favsItem])
    }
}
