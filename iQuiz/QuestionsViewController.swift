//
//  QuestionsViewController.swift
//  iQuiz
//
//  Created by Danfeng Yang on 5/19/21.
//

import UIKit

class QuestionsViewController: UIViewController {
    ////////////<<<<<<<<<<<</Fishzz/////////////////////
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var question: UILabel!
    public var typeNum: Int! = 0
    static let CELL_STYLE = "questionAnsCell"
    public var fullData: [Quiz] = []
    public var questionNum: Int! = 0
    public var scoreNum: Int! = 0
    public var totalNum: Int! = 0
    public var selectedAns: String! = nil
    public var answers: [String]! = nil
    public var correctAns: String? = nil
    public var url: String! = nil
    //////////////////////////////Fishzz/>>>>>>>>>>>>>>//>////////
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
