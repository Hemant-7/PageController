//
//  NewCardIntroVC.swift
//  PageController
//
//  Created by Brain Tech on 03/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class NewCardIntroVC: UIViewController,UIScrollViewDelegate {

    var slides:[Slide] = []
       var slide:[Slide] = []
       
       let images = [UIImage(named: "ic_select_card"), UIImage(named: "ic_card_content"), UIImage(named: "ic_pic_photo"),
                     UIImage(named: "ic_final_card")]
       
       let lbltitleArr = [( "Pick a Design"),( "Pick Content From Profile"),( "Add a picture or Logo"),( "Preview Your New Card And Confirm")]
       
       
       let arrOfFirstSlidePoint = [("Pick a design that suits your taste"),
                         ("Click on the design to see template details"),
                         ("Your contact information never gets stale"),
                         ("Length of name, count of phone numbers, count of emails etc.")]
       let arrOfSecondSlidePoint = [("Ensure your profile is complete"),("Pick Name: First, Middle, Last name"),("Pick Connect: Phones, Emails, Socials,URLs"),("Pick a job School for the card")]
       
       let arrOfThirdSlidePoint = [("Pick from an image you may have uploaded to Menu -> MyPicture"),("Or simply upload a new image"),("Select an image to be shown an your card")]
       
       let arrOfFourthSlidePoint = [("Check out the card preview"),("To make changes, simply go back"),("One sure, just Confirm!")]
    
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
                slide1.viewFourth.isHidden = true
        
                let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: Slide.self, options: nil)?.first as! Slide
                slide2.imgView.image = images[1]
                slide2.lblTitle.text = lbltitleArr[1]
                slide2.lblFirstPoint.text = arrOfSecondSlidePoint[0]
                slide2.lblSecondPoint.text = arrOfSecondSlidePoint[1]
                slide2.lblThirdPoint.text = arrOfSecondSlidePoint[2]
                slide2.lblForthPoint.text = arrOfSecondSlidePoint[3]
        
                let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: Slide.self, options: nil)?.first as! Slide
                slide3.imgView.image = images[2]
                slide3.lblTitle.text = lbltitleArr[2]
                slide3.lblFirstPoint.text = arrOfThirdSlidePoint[0]
                slide3.lblSecondPoint.text = arrOfThirdSlidePoint[1]
                slide3.lblThirdPoint.text = arrOfThirdSlidePoint[2]
                slide3.viewFourth.isHidden = true
        
                let slide4:Slide = Bundle.main.loadNibNamed("Slide", owner: Slide.self, options: nil)?.first as! Slide
                slide4.imgView.image = images[3]
                slide4.lblTitle.text = lbltitleArr[3]
                slide4.lblFirstPoint.text = arrOfFourthSlidePoint[0]
                slide4.lblSecondPoint.text = arrOfFourthSlidePoint[1]
                slide4.lblThirdPoint.text = arrOfFourthSlidePoint[2]
                slide4.viewFourth.isHidden = true
        
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
    
    @IBAction func btnSkip(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
