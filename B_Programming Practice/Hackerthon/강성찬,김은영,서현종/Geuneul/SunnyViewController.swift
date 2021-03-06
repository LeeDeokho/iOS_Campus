//
//  SunnyViewController.swift
//  Geuneul
//
//  Created by Eunyeong Kim on 2017. 7. 6..
//  Copyright © 2017년 Kang Seongchan. All rights reserved.
//

import UIKit

class SunnyViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var sunnyCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sunnyCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TestKolodaViewController.sunnyArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : SunnyCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SunnyCell", for: indexPath) as! SunnyCollectionViewCell
        
            cell.sunnyImgView.image =  TestKolodaViewController.sunnyArray[indexPath.item]
        
        return cell
    }


}
