//
//  MainVC.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/29/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import UIKit

var indexToUse : Int!

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images = ["icon0","icon1","icon2","icon3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        layoutSetup()
        navBarSetup()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navBarSetup()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainMenuCollectionViewCell
        cell.image.image = UIImage(named: images[indexPath.item])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let cell = collectionView.cellForItem(at: indexPath){
            performSegue(withIdentifier: "towardsAlgorithmVC", sender: cell)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "towardsAlgorithmVC"{
            if let indexPath = collectionView.indexPath(for: sender as! MainMenuCollectionViewCell){
                let destinationVC = segue.destination as! AlgorithmTableViewController
                destinationVC.info = indexPath.item
            }
        }
    }
    
    func layoutSetup(){
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20.0, 20.0, 0.0, 0.0)
        layout.itemSize = CGSize(width: 300.0, height: 300.0)
        layout.minimumLineSpacing = 45.0
        layout.minimumInteritemSpacing = 0.0
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
    
    }
    
    func navBarSetup(){
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = UIColor(red: 52.0/255.0, green: 59.0/255.0, blue: 87.0/255.0, alpha: 1.0)
        
        if let barFont = UIFont(name: "Nexa-Light", size: 22.0){
            navBar?.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white,NSFontAttributeName : barFont]
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
