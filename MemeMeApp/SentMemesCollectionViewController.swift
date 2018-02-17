//
//  MemeCollectionViewController.swift
//  MemeMeApp
//
//  Created by Max Boguslavskiy on 13/02/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class SentMemesCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        
//        let space:CGFloat = 3.0
//        let dimension = (view.frame.size.width - (2 * space)) / 3.0
//        
//        flowLayout.minimumInteritemSpacing = space
//        flowLayout.minimumLineSpacing = space
//        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SentMemeCollectionCell", for: indexPath) as! SentMemeCollectionViewCellController
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Set the image
        cell.memeImageView?.image = meme.memedImage
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "detailViewController") as! detailViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
    
    
    
    
    
    
    
    
}
