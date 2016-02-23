//
//  WebViewController.swift
//  TicTacSwift
//
//  Created by south boske on 2/18/16.
//  Copyright © 2016 com.boske.south. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://en.wikipedia.org/wiki/Tic-tac-toe")
        webView.loadRequest(NSURLRequest(URL: url!))
        self.spinner.startAnimating()
        self.spinner.stopAnimating()
        self.spinner.hidesWhenStopped = true
    }
} 
