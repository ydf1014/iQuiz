//
//  ViewController.swift
//  iQuiz
//
//  Created by Danfeng Yang on 5/6/21.
//

import UIKit

class quizSource:NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicStyle", for: indexPath)
        cell.textLabel?.text = quizTitle[indexPath.row]
        cell.detailTextLabel?.text = quizDescription[indexPath.row]
        
        return cell
    }
    
    
    let quizTitle = ["Mathematics", "Marvel Super Heroes", "Science"]
    let quizDescription = ["Dealing with numbers","Characters in the Marvel Universe","Systematic study of our world"]
}


class ViewController: UIViewController {
    
    let data = quizSource()
    @IBOutlet weak var quizTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        quizTable.dataSource = data
        quizTable.tableFooterView = UIView()
        
    }


}

