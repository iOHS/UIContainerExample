//
//  ViewController.swift
//  SwiftTest
//
//  Created by OHSEUNGWOOK on 2017. 5. 22..
//  Copyright © 2017년 OHSEUNGWOOK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var pageControl: UIPageControl!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		pageControl.numberOfPages = 4;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
	}

}

