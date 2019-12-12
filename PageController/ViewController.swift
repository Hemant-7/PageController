//
//  ViewController.swift
//  PageController
//
//  Created by mac on 9/12/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit
import CHIPageControl

class ViewController: UIViewController,UIScrollViewDelegate {
    
    var slides:[Slide] = []
    var slide:[Slide] = []
    
    let images = [UIImage(named: "ic_cards"), UIImage(named: "ic_forward_bg"), UIImage(named: "ic_pockets_bg"),
                  UIImage(named: "ic_profile_bg")]
    
    let lbltitleArr = [( "Smart Business Card"),( "It's Easy to share"),( "Pockets"),
                       ( "View Profile")]
    
    
    let arrOfFirstSlidePoint = [("Smart, beautiful business cards, no paper!"),
                      ("Custom design. You Are unique, so is your business card"),
                      ("Your contact information never gets stale"),
                      ("All your contacts automatically get your updated information")]
    let arrOfSecondSlidePoint = [("Four easy ways to share your smart business card"),("Email,SMS,Zoroko Id or simply Flick It!")]
    
    let arrOfThirdSlidePoint = [("Organize your contacts in Pockets"),("Cards of Family,Friends and Colleagues organized by Pockets"),("Create new Pockets for different contacts")]
    
    let arrOfFourthSlidePoint = [("Never forget who's business card you have"),("Share details about yourself with your contacts"),("Full Privacy! Granular control over who sees which information in your profile")]
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var btnSkip: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.isDirectionalLockEnabled = true
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        configurePageControl()
        
    }
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        self.pageControl.numberOfPages = slides.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.red
        self.pageControl.pageIndicatorTintColor = UIColor.black
      
    }
    
    func createSlides() -> [Slide] {
        
                let slide1:Slide = Bundle.main.loadNibNamed("Slide",owner: Slide.self, options: nil)?.first as!Slide
                slide1.imgView.image = images[0]
                slide1.lblTitle.text = lbltitleArr[0]
                slide1.lblFirstPoint.text = arrOfFirstSlidePoint[0]
                slide1.lblSecondPoint.text = arrOfFirstSlidePoint[1]
                slide1.lblThirdPoint.text = arrOfFirstSlidePoint[2]
                slide1.lblForthPoint.text = arrOfFirstSlidePoint[3]
        
                let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: Slide.self, options: nil)?.first as! Slide
                slide2.imgView.image = images[1]
                slide2.lblTitle.text = lbltitleArr[1]
                slide2.viewSecond.isHidden = true
                slide2.viewFourth.isHidden = true
                slide2.lblFirstPoint.text = arrOfSecondSlidePoint[0]
                slide2.lblThirdPoint.text = arrOfSecondSlidePoint[1]
        
                let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: Slide.self, options: nil)?.first as! Slide
                slide3.imgView.image = images[2]
                slide3.lblTitle.text = lbltitleArr[2]
                slide3.viewFourth.isHidden = true
                slide3.lblFirstPoint.text = arrOfThirdSlidePoint[0]
                slide3.lblSecondPoint.text = arrOfThirdSlidePoint[1]
                slide3.lblThirdPoint.text = arrOfThirdSlidePoint[2]
        
                let slide4:Slide = Bundle.main.loadNibNamed("Slide", owner: Slide.self, options: nil)?.first as! Slide
                slide4.imgView.image = images[3]
                slide4.lblTitle.text = lbltitleArr[3]
                slide4.viewSecond.isHidden = true
                slide4.lblFirstPoint.text = arrOfFourthSlidePoint[0]
                slide4.lblThirdPoint.text = arrOfFourthSlidePoint[1]
                slide4.lblForthPoint.text = arrOfFourthSlidePoint[2]
        
                return [slide1, slide2, slide3, slide4]
    }

    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        
        for i in 0 ..< slides.count {
            print(view.frame.width * CGFloat(i))
            slides[i].frame = CGRect(x: (view.frame.width * CGFloat(i)), y: 0, width: view.frame.width, height: view.frame.height - 50)
            scrollView.addSubview(slides[i])
        }
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
        if scrollView.contentOffset.y>0 {
            scrollView.contentOffset.y = 0
        }
    }
    
    @IBAction func btnSkipClick(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConfirmAccountVC") as! ConfirmAccountVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

