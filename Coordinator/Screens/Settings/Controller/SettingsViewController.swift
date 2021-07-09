//
//  SettingsViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class SettingsViewController: NibViewController<SettingsContentView>, SettingsHandler {
    
    //MARK: - Private methods:
    private var settings: [[Item]] = []
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        contentView.tableView.tableFooterView = UIView()
        setSettings()
    }
    
    //MARK: - Private methods:
    private func setSettings() {
        let firstSettings = (0...3).map { index in
            return Item(title: "Setting description \(index)")
        }
        let secondSettings = (0...5).map { index in
            return Item(title: "Setting description \(index)")
        }
        
        settings.append(firstSettings)
        settings.append(secondSettings)
    }
    
}

//MARK: - UITableViewDelegate & DataSource:
extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        settings.count
    }
    
    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        if section == settings.startIndex {
            return "First settings"
        } else {
            return "Second settings"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SettingsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.titleLabel.text = settings[indexPath.section][indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
