//
//  myTableViewCell.swift
//  baitap_buoi13
//
//  Created by apple on 2024/09/23.
//

import UIKit

class myTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var mycollect: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mycollect.delegate = self
        mycollect.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ListDienThoai[mycollect.tag].hinhanh.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectcell", for: indexPath) as! myCollectionViewCell
        cell.imghinh.image = UIImage(named: ListDienThoai[mycollect.tag].hinhanh[indexPath.row])
        cell.lable_ten.text = ListDienThoai[mycollect.tag].tendienthoai[indexPath.row]
        return cell
    }
    

}
