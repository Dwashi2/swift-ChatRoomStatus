//
//  ViewController.swift
//  ChatRoomStatus
//
//  Created by Daniel Washington Ignacio on 13/06/21.
//

/*
 Write a function that returns the number of users in a chatroom based on the following rules:

 If there is no one, return "no one online".
 If there is 1 person, return "user1 online".
 If there are 2 people, return user1 and user2 online".
 If there are n>2 people, return the first two names and add "and n-2 more online".
 For example, if there are 5 users, return:

 "user1, user2 and 3 more online"
 Examples

 chatroomStatus([]) ➞ "no one online"

 chatroomStatus(["paRIE_to"]) ➞ "paRIE_to online"

 chatroomStatus(["s234f", "mailbox2"]) ➞ "s234f and mailbox2 online"

 chatroomStatus(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"])
 ➞ "pap_ier44, townieBOY and 4 more online"
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.chatroomStatus([]))
        print(self.chatroomStatus(["paRIE_to"]))
        print(self.chatroomStatus(["s234f", "mailbox2"]))
        print(self.chatroomStatus(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"]))
    }
    
    func chatroomStatus(_ users: [String]) -> String {
        let count: Int = users.count
        switch count {
        case 0:
            return "no one online"
        case 1:
            return "\(users.joined()) online"
        case 2:
            return "\(users[0]) and \(users[1]) online)"
        default:
           return "\(users[0]), \(users[1]) and \(count-2) more online"
        }
     }


}

