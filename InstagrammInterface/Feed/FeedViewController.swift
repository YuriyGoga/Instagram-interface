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
    
//MARK: - Private properties
    
    private let tableView = UITableView()
    private var items: [FeedItemType] = [
        .stories([
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: true, isNewStory: false),
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: false, isNewStory: true),
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: false, isNewStory: false),
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: false, isNewStory: true),
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: false, isNewStory: false),
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: false, isNewStory: true),
            FeedStoriesItemCellInfo(image: UIImage(named: "priroda") ?? UIImage(), userName: "Yuriy Goga", isAddButtonVisible: false, isNewStory: false)

        ])
    ]
}

// MARK: - Private methods
private extension FeedViewController {
    func initialize () {
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationItem.leftBarButtonItems = makeLeftBarButtonItems()
        navigationItem.rightBarButtonItems = makeRightBarButtonItems()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(FeedstoriesSetCell.self, forCellReuseIdentifier: String(describing: FeedstoriesSetCell.self))
        tableView.register(FeedPostCell.self, forCellReuseIdentifier: String(describing: FeedPostCell.self))
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
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

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        switch item {
        case .stories(let info):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeedstoriesSetCell.self), for: indexPath) as! FeedstoriesSetCell
            cell.configure(with: info)
            return cell
        case .post(let post):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeedPostCell.self), for: indexPath) as! FeedPostCell
            cell.configure(with: post)
            return cell
        }
    }
    
    
}
