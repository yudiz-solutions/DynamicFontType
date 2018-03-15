//
//  ViewController.swift
//  DynamicTypeFonts
//
//  Created by Yudiz Solutions Pvt. Ltd. on 15/03/18.
//  Copyright © 2018 Yudiz Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCustomFont1: UILabel!
    @IBOutlet weak var lblCustomFont2: UILabel!
    @IBOutlet weak var lblTitle3: UILabel!
    @IBOutlet weak var lblBody: UILabel!
    @IBOutlet weak var lblCaption1: UILabel!
    @IBOutlet weak var lblCaption2: UILabel!
    @IBOutlet weak var lblSubhead: UILabel!
    @IBOutlet weak var lblFootnote: UILabel!
  

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.updateCustomFontSize()
    }
    
    func updateCustomFontSize(){
        //Custom font with dynamic type
        lblCustomFont1.font = UIFontMetrics(forTextStyle: .title1).scaledFont(for: UIFont(name: "Helvetica", size: 15)!)//title 1 FontTextStyle
        lblCustomFont2.font = UIFontMetrics.default.scaledFont(for: UIFont(name: "Helvetica", size: 15)!)
        
        //System font with dynamic type using different FontTextStyle
        lblTitle3.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        lblBody.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        lblCaption1.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        lblCaption2.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption2)
        lblSubhead.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        lblFootnote.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.footnote)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

