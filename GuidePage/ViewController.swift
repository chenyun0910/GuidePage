//
//  ViewController.swift
//  GuidePage
//
//  Created by 陈允 on 2023/6/25.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
       let pageIndex =  round(scrollView.contentOffset.x / view.bounds.width)
       pageControl.currentPage = Int(pageIndex)
        if scrollView.contentOffset.x > (view.bounds.width * 2 + 50) {
            var sb = storyboard!.instantiateInitialViewController()!
            sb.modalPresentationStyle = .fullScreen
            present(sb, animated: true)
        }
    }
}

