//
//  ViewController.swift
//  TerryFoxTowns
//
//  Created by Russell Gordon on 2019-10-26.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // Outlets, constants, and variables defined here will be available for use anywhere below.
    @IBOutlet weak var scrollView: UIScrollView!
    var labelOutput = UILabel()
    
    // MARK: Methods
    // This method runs once when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Initialize the label
        labelOutput = UILabel(frame: scrollView.frame)
        
        // Set the text
        labelOutput.text = """
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec diam et erat accumsan commodo a tempus lacus. Fusce rutrum nisl accumsan, sollicitudin metus vitae, sollicitudin est. Curabitur condimentum posuere ligula. Nulla arcu velit, scelerisque ultrices urna vitae, commodo feugiat ligula. Quisque non vestibulum leo. Praesent et interdum odio, mattis consectetur quam. Pellentesque maximus vulputate lacus eget porttitor. Suspendisse rutrum, risus quis laoreet efficitur, libero dolor tristique nisl, vitae convallis ipsum quam vel tortor. Sed sagittis, lacus vitae pulvinar mattis, sapien tellus laoreet nunc, non luctus leo orci ac turpis. Proin sollicitudin eros et lobortis egestas. Morbi nec nisi sit amet quam consectetur pretium eget eget nibh. Aliquam rutrum luctus nisi, in efficitur sapien pellentesque auctor. Sed hendrerit felis odio. Duis vitae turpis eros. In eu egestas felis.

            Vestibulum pharetra orci ac arcu dictum, ut tincidunt nisi bibendum. Suspendisse ac justo purus. Morbi ac placerat nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin sed massa nec justo varius accumsan ac a diam. Proin posuere sagittis magna sed finibus. Vivamus at ornare magna, commodo egestas nisl. Pellentesque a pharetra justo, a cursus sem. Donec rhoncus odio sit amet nisl scelerisque, vitae elementum odio commodo.

            Donec maximus consectetur ligula id tempor. Nulla venenatis facilisis massa, vitae maximus massa semper vel. Nunc vulputate a nisi vitae elementum. Morbi pharetra nibh arcu, et congue ante porttitor sed. Sed lobortis enim vel justo sodales, sit amet iaculis nisi pulvinar. Nunc lectus eros, ullamcorper non diam nec, luctus pulvinar nulla. Etiam quis augue ultricies, tincidunt quam bibendum, mollis nisl. Nunc et magna augue. Sed fermentum tellus sed tortor aliquam facilisis. Praesent placerat consequat orci at venenatis. In a dui non ligula accumsan consectetur. Vivamus eget lacus eget mauris pharetra venenatis.

            Nulla rhoncus nisl et dapibus pretium. Quisque vitae tincidunt sapien, nec facilisis risus. Cras eu arcu vulputate diam pellentesque tristique in sed arcu. Cras augue quam, bibendum ac dictum ut, aliquam id mauris. In nunc elit, finibus ac purus vulputate, eleifend gravida tortor. Quisque suscipit, tellus at pretium blandit, mi ligula placerat lectus, ac euismod ex enim nec quam. Nunc eu vulputate arcu. Cras maximus augue ac sem pulvinar, bibendum tincidunt neque fringilla. Aliquam ac ex orci. Aliquam eget pulvinar libero. Proin lobortis risus vel urna egestas, sed luctus enim vehicula. Donec sagittis nec metus vel laoreet. Curabitur efficitur lobortis neque at iaculis. Cras gravida nisl vel mi scelerisque, quis vestibulum urna facilisis. Phasellus hendrerit urna lorem, id tincidunt nulla ullamcorper ut.

            Duis consequat, odio ac vestibulum convallis, mi metus suscipit nulla, blandit dapibus augue lectus rutrum risus. Nunc et nisi quis odio lobortis mattis. Phasellus ante lorem, sodales porta sapien sed, facilisis egestas ipsum. Etiam pulvinar ac ipsum ac accumsan. In hac habitasse platea dictumst. Nullam accumsan pretium ex eu lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla a orci in nunc tincidunt posuere ac vel dolor. Duis id bibendum arcu. Vestibulum volutpat diam ac nisl rutrum condimentum. Aenean eu urna in diam dictum consectetur. Suspendisse auctor turpis vel massa sagittis maximus. In vitae elementum sem, ac commodo tellus. Morbi venenatis nunc imperdiet, vehicula enim vel, semper libero. Etiam ac ipsum metus. Phasellus tempus quam a ex faucibus condimentum.
            """
        
        // Set the text appearance inside the label
        labelOutput.lineBreakMode = .byWordWrapping
        labelOutput.numberOfLines = 0
        
        // Resize the label to fit the current text it contains
        labelOutput.sizeToFit()
        
        // Add the label as a subview (child) of the scroll view
        scrollView.addSubview(labelOutput)
                
        // Set the scroll view size now
        // (width same as it already was, height now matched to new height of label after sizing to fit the content)
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width
            , height: labelOutput.frame.size.height)
    }


}

