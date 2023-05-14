//
//  ViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/03/24.
//

import UIKit

class ViewController: UIViewController {

    // Type - same as saying the Identity of something.
    
    // Ndalo
    var firstChildName: String = "Ndalo"
    var firstChildAge: Int = 5
    var firstChildIsMale: Bool = true
    
    // Melo
    var secondChildName = "Melo"
    var secondChildAge = 2
    var secondChildIsMale = false
    
    /// Extra Notes
    /// - Collection Types - 3 ways to group elements in Swift (in general code)
    /// 1. Arrays - are ways to collect/group items together
    /// 2. Dictionary -
    /// 3. Set -

    
    /// General Notes on Array
    ///  - Arrays are Ordered Lists/Collection. If you swap things around, they change the order.
    /// - Arrays have to contain the same Type i.e. Strings only, Intergers Only etc
    /// - You can add elements into an array.
    /// - Remove Elements at an Index
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // arrayLearning()

        // var arrayOfAges = [5, 6]
        // print(arrayOfAges)
        
        // print(arrayOfAges.count)
        
        // Give me the element at Index 5
        // If the index does not exist, the app will crash - `Fatal Error`
        // print(arrayOfAges[5])
        
        // Appends/ Adds an elements othe array
        // arrayOfAges.append(10)
        // [5, 6, 10]
        // [0, 1, 2]
        
        // print(arrayOfAges)
        // Remove an element from an array at a specific Index
        // arrayOfAges.remove(at: 6)

        
        // print(arrayOfAges)
        // print(arrayOfAges.count)
        
        
        
        var ndaloAge = 40
        var melo = 90

        // false ||
        if ndaloAge > 40 || melo > 12 { // || or
            print("Old man")
        } else if ndaloAge < 40 && melo != 100 { // && and    != not equal to
            print("Baby Boy") // true
        } else {
            print("Baby") // true
        }
        
        
        /// - `isRaining` is a name
        /// `false` is a value
        var isRaining = false
        
        // compating variable called `isRaining` to the value called `true`
        if isRaining == true {
            print("Wear Jacket")
        } else {
            
        }
        
        let loggedInUser = ""
        
        // Make the carPrice 20000 and prevent it from being changed
        var carPrice = 20000
        
        // is carPrice equal to 40000
        if carPrice == 30000 {
            print("Buy It")
        }
        
        // Change CarPrice to 30k
        carPrice = 30000
        
        if carPrice == 30000 {
            print("Buy It")
        }
        
        if 5 == 9 {
            print("Equal value.... ")
        }
        
        view.backgroundColor = .red
    }
    
    func run() {
        
    }
    
    func arrayLearning() {
        var arrayOfChildrenNames = [secondChildName, firstChildName]
        print(arrayOfChildrenNames)
        print(arrayOfChildrenNames.count)
        
        // Adding More Elements to the Array
        arrayOfChildrenNames.append("Simphiwe")
        print(arrayOfChildrenNames)
        
        // How many elements are in the array:
        print(arrayOfChildrenNames.count)
        
        
        // Find the elements at a specific index
        print("Element at Index 2: " + arrayOfChildrenNames[2])
        
        
        // Array can crash is the index you are looking for doesn't exist
        // print("Element at Index 12: " + arrayOfChildrenNames[12])
        
        // Update a Variable
        print("### Second Age \(secondChildAge)")
        var updateAge = secondChildAge + 1
        print("Second Age \(updateAge)")
        
        
        // Update an Array's Elements
        arrayOfChildrenNames[0] = "Asanda"
        print(arrayOfChildrenNames)
        
        print(arrayOfChildrenNames[0])
    }


}

