//
//  FullScreenPhotoViewController.swift
//  tumblr
//
//  Created by Angel Chara'e Mitchell on 2/14/18.
//  Copyright © 2018 Angel Chara'e Mitchell. All rights reserved.
//

import UIKit
import AlamofireImage

class FullScreenPhotoViewController: UIViewController,  UIScrollViewDelegate {

    var photoUrl: String!
    @IBOutlet weak var fullPhoto: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self

        let url = URL(string: photoUrl)!
        if fullPhoto != nil {
            fullPhoto.af_setImage(withURL: url)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapToZoom(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        fullPhoto.isUserInteractionEnabled = true
        //fullPhoto.addGestureRecognizer(UITap)
        performSegue(withIdentifier: "Zoom", sender: nil)
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let userVC = mainStoryboard.instantiateViewController(withIdentifier: "fullScreen")
        present(userVC, animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return fullPhoto
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
