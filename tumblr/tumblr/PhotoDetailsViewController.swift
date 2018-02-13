//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Angel Chara'e Mitchell on 2/11/18.
//  Copyright © 2018 Angel Chara'e Mitchell. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotoDetailsViewController: UIViewController {

    var photoUrl: String!
    @IBOutlet weak var details: UIImageView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: photoUrl)!
        if details != nil {
            details.af_setImage(withURL: url)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
