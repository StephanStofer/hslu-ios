//
//  ViewController.swift
//  SwiftProgrammers
//
//  Created by Stephan Stofer on 20.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    let deviceWidth = 414  // iphone11
    let deviceHeigth = 896 // iphone11
    let modulus = 3
    let data = DataProvider.sharedInstance
    let usePersonData = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(createBgLabel())
        self.view.addSubview(createTitelLabel("SwiftProgrammers"))
        if usePersonData {
            for (index,person) in data.memberPersons.enumerated() {
                addLabel(person: person, position: index)
            }
        }
        else {
            for (index,memberName) in data.memberNames.enumerated() {
                addLabel(name: memberName, position: index)
            }
        }
    }
    
    func addLabel(name: String, position: Int) {
        let rect = createCGRect(yPositionOffset: position)
        let label = createLabel(text: name, rectangle: rect, code: position)
        self.view.addSubview(label)
    }
    
    func addLabel(person: Person, position: Int) {
        let rectFirstName = createCGRect(yPositionOffset: position)
        let labelFirstName = createLabel(text: person.firstName, rectangle: rectFirstName, code: position)
        self.view.addSubview(labelFirstName)
        
        let rectLastName = createCGRect(xPositionOffset: 1, yPositionOffset: position)
        let labelLastName = createLabel(text: person.lastName, rectangle: rectLastName, code: position)
        self.view.addSubview(labelLastName)
        
        let rectPlz = createCGRect(xPositionOffset: 2, yPositionOffset: position)
        let labelPlz = createLabel(text: String(person.plz), rectangle: rectPlz, code: position)
        self.view.addSubview(labelPlz)
    }
    
    func createBgLabel() -> UILabel {
        let label = UILabel(frame: CGRect(x:0, y:0, width:deviceWidth, height:deviceHeigth))
        label.backgroundColor = .black
        return label
    }
    
    func createTitelLabel(_ appTitle: String) -> UILabel {
        let label = UILabel(frame: CGRect(x:0, y:20, width:deviceWidth, height:200))
        label.text = appTitle
        label.textColor = .orange
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 40.0)
        return label
    }
    
    func createCGRect(xPositionOffset: Int = 0, yPositionOffset: Int = 0) -> CGRect{
        return CGRect(x: 10 + (xPositionOffset * 150), y: 200 + (yPositionOffset * 50), width: deviceWidth-10, height: 50)
    }
    
    func createLabel(text: String, rectangle: CGRect, code: Int) -> UILabel{
        let label = UILabel(frame: rectangle)
        label.text = text
        label.textColor = color(code: code)
        label.textAlignment = alignment(code: code)
        return label
    }
    
    func color(code: Int) -> UIColor{
        let color :UIColor
        if usePersonData {
            return UIColor(ciColor: .green)
        }
        switch code % modulus{
        case 1:
            color = .red
        case 2:
            color = .green
        default:
            color = .white
        }
        return color
    }
    
    func alignment(code: Int) -> NSTextAlignment{
        let align :NSTextAlignment
        if usePersonData {
            return NSTextAlignment(.left)
        }
        switch code % 2{
        case 1:
            align = .right
            
        default:
            align = .left
        }
        return align
    }
}

