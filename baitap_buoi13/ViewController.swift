//
//  ViewController.swift
//  baitap_buoi13
//
//  Created by apple on 2024/09/23.
//

import UIKit

var ListDienThoai:[DienThoai] = [
DienThoai(loai: "Iphone", hinhanh: ["8","2","3","4","5"], tendienthoai: ["iphone8","iphone8 plus","iphone8 pro","iphone8 pro max","iphone8 old"]),
DienThoai(loai: "Ipad", hinhanh: ["11","22","33","44","22"], tendienthoai: ["ipad12","ipad12 plus","ipad12 pro","ipad12 pro max","ipad12 old"]),
DienThoai(loai: "Macbook", hinhanh: ["6","7","8","2","4"], tendienthoai: ["macbook","macbook plus","macbook pro","macbook pro max","macbook old"]),
]

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var mytable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.delegate = self
        mytable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! myTableViewCell
        cell.mycollect.tag = indexPath.section
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ListDienThoai[section].loai
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
                header.textLabel?.textColor = .blue
            header.textLabel?.font = UIFont.boldSystemFont(ofSize: 28)
            }
            
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return ListDienThoai.count
    }
    
}

