//
//  shoppingCollectionViewController.swift
//  golug
//
//  Created by Shiv on 02/07/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class shoppingCollectionViewController: UICollectionViewController {
    
var arrData = [UIImage]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = [#imageLiteral(resourceName: "WhatsApp Image 2021-10-17 at 11.52.40 AM"),#imageLiteral(resourceName: "WhatsApp Image 2022-05-28 at 11.01.37 PM"),#imageLiteral(resourceName: "WhatsApp Image 2022-06-13 at 11.46.42 PM"),#imageLiteral(resourceName: "WhatsApp Image 2022-06-27 at 6.36.53 PM")]

        //
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)


        
    }

  

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    
}
