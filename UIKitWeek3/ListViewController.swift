//
//  ViewController.swift
//  UIKitWeek3
//
//  Created by ram on 7/3/24.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let totallist:[ListModel] = ListModel.list
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    


}
extension ListViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totallist.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionViewCell", for: indexPath) as? ListCollectionViewCell else{
            return UICollectionViewCell()
        }
        let list = totallist[indexPath.item]
        cell.configure(list)
        return cell
    }
    
}
extension ListViewController:UICollectionViewDelegate{
    
}
extension ListViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
