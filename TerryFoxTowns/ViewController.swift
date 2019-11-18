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
    @IBOutlet weak var labelOutput: UILabel!
    
    // NOTE TO STUDENTS
    // Below this line, add an outlet to connect the text field, so you can obtain how many km Terry has run
    @IBOutlet weak var enteredDistance: UITextField!
    
    
    // MARK: Methods
    // This method runs once when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Reset the label
        resetLabel()
        
        
    }
    
    // Add to the content of the label
    // Use this function to add a new city to the label
    // NOTE TO STUDENTS: Do not delete this function.
    func prependToLabel(this newText: String) {
        
        // 1. Move to next line in the label (\n)
        // 2. Add the new text (newText)
        labelOutput.text! = newText + "\n" + labelOutput.text!
        
    }
    
    // This function resets the contents of the label
    // NOTE TO STUDENTS: Do not delete this function.
    func resetLabel() {
        
        // Set the text
        labelOutput.text = ""
        
        // Resize UI
        resizeLabelAndScrollView()
        
    }
    
    // This function sizes the label and the scroll view so that the scroll view will scroll
    // NOTE TO STUDENTS: Do not delete this function.
    func resizeLabelAndScrollView() {
        
        // Resize the label to fit the current text it contains
        labelOutput.sizeToFit()
        
        // Set the scroll view size
        // 1. width same as it already was
        // 2. height same as label
        //    (recall label was just resized to fit new content)
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: labelOutput.frame.size.height)
        
    }
    
    // NOTE TO STUDENTS
    // After these comments, you should fill in the action below that has been connected to the button "Show Towns Terry Has Been To".
    // Then, use the action to obtain the km Terry has run (from the text field) and write logic inside the action to add the towns.
    // Remember, look at the hint given – be sure you review this page:
    // https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html#ID140
    @IBAction func showTowns(_ sender: Any) {
        
        // Dismisses the keyboard (so it does not block the view of the output)
        view.endEditing(true)
        resetLabel()
        // NOTE TO STUDENTS
        // Add your code below...
        guard let distanceAsString = enteredDistance.text else {
            labelOutput.text = "Please enter a distance."
            return}
        if distanceAsString.isEmpty {
            labelOutput.text = "Please enter a distance."
            return
        }
        
        guard let distanceAsInteger = Int(distanceAsString) else { labelOutput.text = "Please enter numeric distance."
            return}
        
        
        switch distanceAsInteger {
        case 5373 : prependToLabel(this: "Thunder Bay, ON")
            fallthrough
        case 5153...5373: prependToLabel(this: "Terrace Bay, ON")
            fallthrough
        case 4901...5153:
            prependToLabel(this: "Wawa, ON")
            fallthrough
        case 4675...4901: prependToLabel(this: "Sault Ste. Marie, ON")
            fallthrough
        case 4430...4675: prependToLabel(this: "Sudbury, ON")
            fallthrough
        case 4153...4430: prependToLabel(this: "Gravenhurst, ON")
            fallthrough
        case 3622...4153: prependToLabel(this: "Hamilton, ON")
            fallthrough
        case 3523...3622: prependToLabel(this: "Toronto, ON")
            fallthrough
        case 3508...3523: prependToLabel(this: "Scarborough Civic Centre, ON")
            fallthrough
        case 3488...3508: prependToLabel(this: "Pickering, ON")
            fallthrough
        case 3123...3488: prependToLabel(this: "Ottawa, ON\nMillbrook, ON")
            fallthrough
        case 3030...3123: prependToLabel(this: "Hawkesbury, ON")
            fallthrough
        case 2917...3030: prependToLabel(this: "Montreal, QC")
            fallthrough
        case 2663...2917: prependToLabel(this: "Quebec City, QC")
            fallthrough
        case 2592...2663: prependToLabel(this: "Highway 20, QC")
            fallthrough
        case 2426...2592: prependToLabel(this: "Highway 185, QC")
            fallthrough
        case 2256...2426: prependToLabel(this: "Perth-Andover, NB")
            fallthrough
        case 2214...2256: prependToLabel(this: "Bristol, NB")
            fallthrough
        case 1865...2214: prependToLabel(this: "Highway 2, west of Moncton, NB")
            fallthrough
        case 1728...1865: prependToLabel(this: "Charlottetown, PEI")
            fallthrough
        case 1373...1728: prependToLabel(this: "Dartmouth, NS")
            fallthrough
        case 1278...1373: prependToLabel(this: "Sheet Harbour, NS")
            fallthrough
        case 882...1278: prependToLabel(this: "Port-Aux-Basques, NF")
            fallthrough
        case 542...882: prependToLabel(this: "South Brook Junction, NF")
            fallthrough
        case 346...542 : prependToLabel(this: "Gander, NF")
            fallthrough
        case 0...346 : prependToLabel(this: "St. John’s, NF")
            
            
        default:
            labelOutput.text = "Terry Fox hadn't gone that far"
        }
        
    }
    
}






