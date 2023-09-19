//
//  ColorsTableViewController.swift
//  RandomColors
//
//  Created by Bandit Silachai on 18/9/23.
//

import UIKit

class ColorsTableViewController: UIViewController  {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segue {
        static let toDetail = "ToColorDetailViewController"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor()
    }
    
    func addRandomColor() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailViewController
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableViewController: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }

        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        print(color)
        performSegue(withIdentifier: Segue.toDetail, sender: color)
    }
}
