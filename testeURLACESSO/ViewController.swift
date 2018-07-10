//
//  ViewController.swift
//  testeURLACESSO
//
//  Created by Vilhena Sorrentino, Ian on 05/07/18.
//  Copyright © 2018 Vilhena Sorrentino, Ian. All rights reserved.
//

import UIKit
import SafariServices


class ViewController: UIViewController, SFSafariViewControllerDelegate {

    private let urlStringAssignature:String = "https://goo.gl/CnWc9p"
    private let urlStringPhoto:String = "https://goo.gl/AGiHxc"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func openURL(_ sender: UIButton) {
        let svc = SFSafariViewController(url: NSURL(string: self.urlStringAssignature)! as URL)
        svc.delegate = self
        self.present(svc, animated: true, completion: nil)
    }
    
    private func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

