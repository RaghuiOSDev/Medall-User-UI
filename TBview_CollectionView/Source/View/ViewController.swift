//
//  ViewController.swift
//  TBview_CollectionView
//
//  Created by KMT on 10/25/21.
//  Copyright © 2021 KMT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var plumeButton: customButton!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var details_Tableview: UITableView!
    override func viewDidLoad() {
        details_Tableview.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderTableViewCellID")
        details_Tableview.register(UINib(nibName: "CustomTableviewCell", bundle: nil), forCellReuseIdentifier: "CustomTableviewCellID")
        details_Tableview.register(UINib(nibName: "TestsTableViewCell", bundle: nil), forCellReuseIdentifier: "TestsTableViewCellID")
        details_Tableview.register(UINib(nibName: "ReviewTableviewCell", bundle: nil), forCellReuseIdentifier: "ReviewTableviewCellID")
        details_Tableview.delegate = self
        details_Tableview.dataSource = self
        userImg.layer.cornerRadius = userImg.frame.width/2
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 61
        }else {
            return 100
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            let cell = details_Tableview.dequeueReusableCell(withIdentifier: "HeaderTableViewCellID") as! HeaderTableViewCell
            return cell
        }else {
            let cell = details_Tableview.dequeueReusableCell(withIdentifier: "TestsTableViewCellID") as! TestsTableViewCell
            return cell
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0{
            let cell = details_Tableview.dequeueReusableCell(withIdentifier: "CustomTableviewCellID", for: indexPath) as! CustomTableviewCell
                return cell
        }else {
            let cell = details_Tableview.dequeueReusableCell(withIdentifier: "ReviewTableviewCellID", for: indexPath) as! ReviewTableviewCell
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 195
        case 1:
            return 376
        default:
            return UITableView.automaticDimension
        }
    }
}
