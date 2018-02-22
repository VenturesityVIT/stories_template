//
//  ViewController.swift
//  stories_template
//
//  Created by Sarvad shetty on 2/22/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource{
   
    let header_Topics = ["Memories","People"]
    let cellTopics = ["Username 1","Username 2","Username 3","Username 4"]
    let imageS = ["1","2","3","4"]

    //MARK:IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return header_Topics.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 55
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "header") as! HeaderTableViewCell
        cell.HeadingLabel.text = header_Topics[section]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
        return 1
        }else{
            return cellTopics.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        return cell1
        }else{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! LastTableViewCell
            cell2.imgView.image = UIImage(named: imageS[indexPath.row])
            cell2.RanLabel.text = cellTopics[indexPath.row]
            return cell2
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
        return 140
        }else{
            return 72
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageS.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionInTableViewCell
        cell.img.image = UIImage(named: imageS[indexPath.row])
        return cell
    }


}

