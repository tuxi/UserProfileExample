//
//  UserProfileViewController.swift
//  Alpface
//
//  Created by swae on 2018/3/11.
//  Copyright © 2018年 alpface. All rights reserved.
//

import UIKit

let ALPSegmentHeight: CGFloat = 44.0
let ALPNavigationBarHeight: CGFloat = 44.0
let ALPStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height

@objc(ALPProfileViewController)
class UserProfileViewController: BaseProfileViewController {
    
    fileprivate lazy var videosTableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .plain)
        return tableView
    }()
    fileprivate lazy var favoritesTableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .plain)
        return tableView
    }()
    fileprivate lazy var storysTableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .plain)
        return tableView
    }()
    
    var custom: UIView!
    var label: UILabel!

    override func numberOfSegments() -> Int {
        return 3
    }
    
    override func segmentTitle(forSegment index: Int) -> String {
        return "Segment \(index)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationString = "Beijing"
        self.nickname = "alpface"
        self.username = "xiaoyuan"//AuthenticationManager.shared.loginUser?.username
//        if let userid = AuthenticationManager.shared.loginUser?.userid {
//            self.nickname = "用户号" + ":\(userid)"
//        }
        
        self.profileImage = UIImage.init(named: "icon.png")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func controller(forSegment index: Int) -> ProfileViewChildControllerProtocol {
        switch index {
        case 0:
            return ChildTableViewController()
        case 1:
            return ChildTableViewController()
        case 2:
            return ChildTableViewController()
        default:
            return ChildTableViewController()
        }
    }
}



