//
//  StartViewController.swift
//  test010423
//
//  Created by merim kasenova on 2/4/23.
//

import UIKit
import SnapKit


class StartViewController: UIViewController {
   
    
    private let titlelabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Mehrab"
        label.textColor = UIColor.lightGray
        label.font = .systemFont(ofSize:20)
        label.numberOfLines = 0
        return label
    }()
    
    private let bigTitlelabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome back!"
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize:35)
        label.numberOfLines = 0
        return label
    }()
    
  private var pizzaMenuList: [Pizza] = []
    
    private let tableView = UITableView()
    private let searchBar = UISearchBar()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        collectionView.dataSource = self
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        view.backgroundColor = .white
        
        initUI()
        
    }
    private func initUI() {
        navigationItem.titleView = searchBar
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.bottom.equalToSuperview().inset(16)
        }
        
            view.addSubview(titlelabel)
            view.addSubview(bigTitlelabel)
            
            titlelabel.snp.makeConstraints {make in
                make.top.equalToSuperview().offset(120)
                make.leading.equalToSuperview().offset(30)
                make.trailing.equalToSuperview().offset(30)
            }
            bigTitlelabel.snp.makeConstraints { make in
                make.top.equalTo(titlelabel.snp.bottom).offset(8)
                make.leading.trailing.equalToSuperview().inset(30)
            }
            
        
            
            //        @objc func goToNextPage(_sender:UIButton) {
            let vc = SecondViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
extension StartViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pizzaMenuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = pizzaMenuList[indexPath.row].name
        cell.detailTextLabel? .text = pizzaMenuList[indexPath.row].address
        return cell
    }
}
   
        
    func collectionView(_collectionView: UICollectionView, numberOfRowsInSection  section: Int) -> Int {
        4
    }
    
    func collectionView(_collectionView: UICollectionView, cellForRowAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.backgroundColor = .gray
        cell.layer.cornerRadius = 20
        return cell
    }
    

