//
//  MemeCollectionViewController.swift
//  MemeMeApp
//
//  Created by Max Boguslavskiy on 13/02/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class SentMemesCollectionViewController: UICollectionViewController {
    
    var memes: [Meme]!
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    @IBAction func navigateToAddMeme(_ sender: Any) {
        let memeEditorController = self.storyboard!.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        self.navigationController!.pushViewController(memeEditorController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.collectionView!.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        self.collectionView!.reloadData()
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SentMemeCell", for: indexPath) as! SentMemeCollectionCellController
        let meme = memes[(indexPath as NSIndexPath).row]
        
        // Set the image
        cell.memeImageView?.image = meme.memedImage
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "detailViewController") as! detailViewController
        detailController.meme = memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
