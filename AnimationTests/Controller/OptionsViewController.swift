//
//  ViewController.swift
//  AnimationTests
//
//  Created by Iago Mordente Rezende Leão Corrêa on 16/07/18.
//  Copyright © 2018 Iago Mordente Rezende Leão Corrêa. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet weak var optionsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        optionsTableView.dataSource = self
        optionsTableView.delegate = self
        optionsTableView.tableFooterView = UIView()
    }
}

extension OptionsViewController: UITableViewDataSource {
    // MARK: - Layout setup
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerFrame = CGRect(x: Constants.zero, y: Constants.zero, width: tableView.frame.width, height: Constants.Sizes.optionsHeaderHeight)
        let headerView = UIView(frame: headerFrame)
        
        let labelFrame = CGRect(x: headerFrame.minX + 20, y: headerFrame.midY - headerFrame.height/2, width: tableView.frame.width, height: Constants.Sizes.optionsHeaderHeight)
        let titleLabel = UILabel(frame: labelFrame)
        titleLabel.text = Constants.Texts.optionsTitle
        titleLabel.textAlignment = .center
        
        headerView.addSubview(titleLabel)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Constants.Sizes.optionsHeaderHeight
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.Sizes.optionsCellHeight
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: Constants.Identifiers.optionsCell)
        cell.textLabel?.text = Constants.options[indexPath.row]
        return cell
    }
}

extension OptionsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        switch indexPath.row {
        case 0:
            let shapes = storyboard.instantiateViewController(withIdentifier: Constants.Identifiers.draggableView)
            self.navigationController?.pushViewController(shapes, animated: true)
        case 1:
            let draggable = storyboard.instantiateViewController(withIdentifier: Constants.Identifiers.drawShapesView)
            self.navigationController?.pushViewController(draggable, animated: true)
        default:
            print("well shiet")
        }
    }
}

