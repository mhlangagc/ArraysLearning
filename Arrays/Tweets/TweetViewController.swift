//
//  TwoStepVerificationViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit

class TweetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var profile = "" // Empty String
    var tweetsArray: [String] = [] // Empty Array of Type String i.e an array that will contain strings.
    
    let leratoTweets = ["God if I’m not where I need to be, please align me with your will and lead me there.🙏🏿",
                        "Blessed weekend 🙏🏿❤️",
                        "There's all of us then there's Nicodemus @DacapoSA 👑",
                        "The one week countdown is on until our grand return to @hiibizaofficial ! Joining myself and @damianlazarus on opening party duties are DJ Tennis and @Carlita__Music for their only Astra Club performance on the island for 2023 + Bartolomeo! Surprise awaits",
                        "Off to the 6 🇨🇦"]
    
    let maboniTweets = ["Ai maan! 😂",
                        "I really love your music 🎼 man, you're gifted the nation mast protect you.🙏🙌🙌🙌🙌",
                        "Was in his neighbourhood this morning ka Zone 4 @DacapoSA nicodemus sekgetha mogashoa, the best, the maestro. You doing great mokonee 🥇💥💥🔥🔥"]
    let sibonileTweetsArray = ["About R1.4 million to upgrade a kitchen, R240 000 to get rid of cockroaches, R54 000 to replace a curtain rail and R50 million to make",
                               "All this happened under the leadership of Patricia De Lille. Perhaps the DA was correct about the shenanigans of this aunty who hates the poor and loves the rich and powerful"]
    
    private lazy var tweetsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = profile + " Tweets"
        
        // Internet Fetching of Tweets
        if profile == "Lerato" {
            tweetsArray = leratoTweets
        } else if profile == "Maboni" {
            tweetsArray = maboniTweets
        } else if profile == "Sibonile" {
            tweetsArray = sibonileTweetsArray
        }
        /* --------------- */
    
        
        setupUI()
        registerCells()
    }
    
    func fetchTweets() {
        let userID = profile
        // fetch user tweets using profile
        // ............. internet call .........
        // result that is an array of String
        // tweetsArray = resultArray
        //
    }
    
    func registerCells() {
        tweetsTableView.register(TweetsTableViewCell.self,
                                  forCellReuseIdentifier: "TweetsTableViewCellID")
    }

    
    func setupUI() {
        view.addSubview(tweetsTableView)
        tweetsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tweetsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tweetsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tweetsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweetsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweetsCell = tableView.dequeueReusableCell(withIdentifier: "TweetsTableViewCellID", for: indexPath) as! TweetsTableViewCell
        tweetsCell.profileNameLabel.text = profile
        tweetsCell.tweetsLabel.text = tweetsArray[indexPath.row]
        return tweetsCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
