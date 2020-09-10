//
//  ViewController.swift
//  Assignment13
//
//  Created by Suhaas Choppavarapu on 9/5/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .black
    }
    
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var index = indexPath.row % 3
        
        switch index {
        case 0:
            guard let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCollectionViewCell.identifier,
                                                                     for: indexPath) as? FirstCollectionViewCell else {
                                                                        return UICollectionViewCell()
            }
            
            firstCell.backgroundColor = UIColor(red: 0.92, green: 0.59, blue: 0.58, alpha: 1.00)
            return firstCell
        case 1:
            guard let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondCollectionViewCell.identifier,
                                                                      for: indexPath) as? SecondCollectionViewCell else {
                                                                        return UICollectionViewCell()
            }
            
            secondCell.backgroundColor = UIColor(red: 0.76, green: 0.93, blue: 0.66, alpha: 1.00)
            return secondCell
            
        default:
            guard let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdCollectionViewCell.identifier,
                                                                     for: indexPath) as? ThirdCollectionViewCell else {
                                                                        return UICollectionViewCell()
            }
            
            thirdCell.backgroundColor = UIColor(red: 0.83, green: 0.77, blue: 0.98, alpha: 1.00)
            return thirdCell
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width = view.frame.size.width
        return CGSize(width: width, height: 20)
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var index = indexPath.row % 3
        switch index {
        case 0:
            return CGSize(width: view.frame.size.width/2, height: 120)
        case 1:
            return CGSize(width: view.frame.size.width, height: 120)
        default:
            return CGSize(width: view.frame.size.width, height: 120)
        }
        
    }
}

extension ViewController: UICollectionViewDelegate{
    
}

class FirstCollectionViewCell : UICollectionViewCell {
    static let identifier = "firstCell"
    
    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
}

class SecondCollectionViewCell : UICollectionViewCell {
    static let identifier = "secondCell"
    
    @IBOutlet weak var imageView: UIImageView!
}

class ThirdCollectionViewCell : UICollectionViewCell {
    static let identifier = "thirdCell"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
}

