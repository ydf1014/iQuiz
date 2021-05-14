//
//  ViewController.swift
//  iQuiz
//
//  Created by Danfeng Yang on 5/6/21.
//

import UIKit

class QuizCell: UITableViewCell {
    @IBOutlet var title : UILabel?
    @IBOutlet var description : UILabel?
    @IBOutlet weak var img : UIImageView?
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
//    let data = quizSource()
    @IBOutlet weak var quizTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        quizTable.dataSource = data
        self.quizTable.dataSource = self
        self.quizTable.delegate = self
        for index in 0...(quizDescription.count - 1) {
            quizCell.append((title: quizTitle[index], description: quizDescription[index], img: quizImage[index]))
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizTitle.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicStyle", for: indexPath) as! QuizCell
        cell.title?.text = quizTitle[indexPath.row]
        cell.description?.text = quizDescription[indexPath.row]
        cell.img?.image = quizImage[indexPath.row]
        
        return cell
    }


    let quizTitle = ["Mathematics", "Marvel Super Heroes", "Science"]
    let quizDescription = ["Dealing with numbers","Characters in the Marvel Universe","Systematic study of our world"]
    let quizImage: [UIImage] = [UIImage(named: "math")!, UIImage(named: "marvel")!, UIImage(named: "science")!]
    var quizCell: [(title: String, description: String, img: UIImage)] = [(title: String, description: String, img: UIImage)]()
   
    
    @IBAction func popSettings(_ sender: Any) {
        let alert = UIAlertController(title: "Settings", message: "OK", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Good to go"), style: .default, handler: {
            _ in NSLog("The \"OK\" alert occured.")
        }))
        present(alert, animated: true, completion: nil)
    }
    
}

