//
//  aboutdepartmentViewController.swift
//  hgcenew
//
//  Created by Mayank Vadaliya on 01/03/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit

class aboutdepartmentViewController: UIViewController {

    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var lbldepart: UILabel!
    
    var name = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        lbldepart.text = name
        
        switch name {
        case "COMPUTER ENGINEERING":
            print("com")
            info.text = "The Computer Engineering Department was established in the year 2007.\n\nThe Computer Engineering (CE) Department offers B. Tech. programme with intake of 120 students. It also provides M. Tech. programmes in Software Engineering with intake of 24 students.\n\nThe department has active research interest in various domains like Machine Learning, Data Mining, Computer Networks and Security, High Performance Computing, Unified Hardware Software co-design etc. It has modern computing amenities equipped with the latest tools and technologies.\n\nThe department has strong collaboration with many research organizations The department emphasizes on effective teaching learning process including project based learning using modern tools and technologies."
        case "INFORMATION TECHNOLOGY ENGINEERING":
            print("INFORMATION")
            info.text = "The Information Technology Department was established in the year 2007.\nThe Information Technology (IT) Department offers B. Tech. programme with intake of 60 students.\n\nDepartment provides a learning environment that helps students to be successful in their professional lives as well as becoming lifelong learners. Many of graduates choose to join further studies from premier institutes in India and abroad. The department is actively involved in various research domains like High Performance Computing, Software Engineering, Networking, Information and Network Security with structured integration of research and academic activities. To support academic requirements and research initiatives department is well equipped with modern computing amenities which include High End servers, more than 200 computing systems connected via LAN using Ethernet, OFC or Wi-Fi so as to provide wired as well as wireless connectivity."
        case "CIVIL ENGINEERING":
            print("CIVIL")
            info.text = "The Civil Engineering Department was established in the year 2007.\n\nThe department offer B.Tech programme with intake of 120 students and M. Tech programme in Transportation Engineering with intake of 18 students.\n\nA group of qualified faculty and adequate experience is the highlight of the department. The department has qualified faculty members occupied with educating and research having perfection in different fields. The faculty members are youthful, dynamic and prepared to meet the scholastic needs yearning of understudies. The department also organizes Training Programmes and Workshops for students as well as professionals from time to time."
        case "ELECTRICAL ENGINEERING":
            print("ELECTRICAL")
            info.text = "The Electrical Engineering Department was established in the year 2007.\n\nThe Electrical Engineering group offers B. Tech programme with intake of 90 students.It also provides M.Tech. programmes in Electrical Engineering with intake of 24 students.\n\nThe EE programme is very well equipped with laboratory facilities and constantly upgrading available hardware and software to create conducive research / testing environment leading to a great opportunity to learn and progress in different technical domains.\n\nThe aim of the department is to prepare graduates with knowledge and technical skill refined with professional touch and to make them capable of undertaking electrical engineering profession meeting the challenges of 21st century.\n\nThe department has qualified faculty members engaged in teaching and research having excellence in various fields. The faculty members are young, dynamic and ready to meet the academic needs of students."
        case "ELECTRONICS AND COMMUNICATION":
            print("ELECTRONICS")
            info.text = "The Electronic and Communication Engineering Department was established in the year 2007.\n\nThe department offers B. Tech. Programme with intake of 60 students and M Tech Programme in Communication Systems Engineering with intake of 18 students.\n\nFaculty members are actively involved in research activities and have many research publications in international & national journals and international conferences to their credit."
        case "AUTOMOBILE ENGINEERING":
            print("AUTOMOBILE")
            info.text = "Modern automotive industries need experts in vehicle design and manufacture. With this in mind, the Department of Automobile Engineering was established in 2007 to train the students in the area of automobile engineering.\n\nThe department offers B. Tech. degree with intake of 60 students.\n\nThrough the application of automotive technology, the course offers specialization in vehicle designing, repairing, testing and assembling."
        case "MECHANICAL ENGINEERING":
            print("MECHANICAL")
            info.text = "The Mechanical Engineering Department was established in the year 2007.\n\nThe department offers B. Tech. Programme with intake of 150 students.It also provides M.Tech. Programme in Computer Aided Design/Computer Aided Manufacturing (CAD/CAM) with intake of 18 students.\nThe aim of the mechanical engineering is to create a flexible undergraduate educational experience in design, mathematics, modeling, computing, management, engineering science, humanities and social sciences.\n\nThe department organizes corporate training programs, besides undertaking industrial consultancy. This imparts immense benefit to students by way of good placements, well-equipped computational laboratories with required software and industrial exposure.\n\nThe department has qualified faculty members engaged in teaching and research having excellence in various domains. The faculty members are young, dynamic and are ready to meet the academic needs of students."
        case "MBA DEPARTMENT":
            print("mba")
            info.text = "The MBA Department of Hasmukh Goswami College of Engineering was started in the year 2009 with a view to impart quality management education for the budding leaders of tomorrow.\n\nThe MBA degree is offered as per curriculum of Gujarat Technological University along with other value added features like, a highly resourced library, fully IT equipped computer lab, an interactive placement cell and frequent industrial visits. At present the department is offering 3 specializations viz, Finance, H.R. and Marketing. The department has been achieving a very high percentage of results from its inception."
        default:
            break;
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any)
    {
       self.navigationController?.popViewController(animated: true)
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
