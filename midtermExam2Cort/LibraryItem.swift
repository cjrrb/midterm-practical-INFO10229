//
//  LibraryItem.swift
//  midtermExam2Cort
//
//  Created by Cort Reynolds-Bolan on 2026-06-18.
//

import Foundation

protocol Borrowable {
    func borrowItem()
    func returnItem()
}

class LibraryItem: Borrowable {
    var itemID: String
    var title: String
    var isBorrowed: Bool
    
    func displayInfo(){
        print("Item ID: \(itemID)\nTitle: \(title)\nBorrowed?: \(isBorrowed)")
    }
    
    init(itemID: String, title: String, isBorrowed: Bool) {
        self.itemID = itemID
        self.title = title
        self.isBorrowed = isBorrowed
    }
    
    func borrowItem(){
        if isBorrowed == false {
            isBorrowed = true
            print("Item is now being borrowed.")
        } else {
            print("Item is already being borrowed.")
        }
    }
    
    func returnItem(){
        if isBorrowed == true {
            isBorrowed = false
            print("Item has been returned.")
        } else {
            print("Item is already available.")
        }
    }
}

class Book: LibraryItem {
    var author: String
    var numberOfPages: Int
    
    init(author: String, numberOfPages: Int) {
        self.author = author
        self.numberOfPages = numberOfPages
        super.init(itemID: "", title: "", isBorrowed: false)
    }
    
    override func displayInfo() {
        print("Item ID: \(itemID)\nTitle: \(title)\nAuthor: \(author)\nNumber of pages: \(numberOfPages)\nBorrowed?: \(isBorrowed)")
    }
}

class Magazine: LibraryItem {
    var issueNumber: Int
    var publicationMonth: String
    
    init(issueNumber: Int, publicationMonth: String) {
        self.issueNumber = issueNumber
        self.publicationMonth = publicationMonth
        super.init(itemID: "", title: "", isBorrowed: false)
    }
    
    override func displayInfo() {
        print("Item ID: \(itemID)\nTitle: \(title)\nIssue Number: \(issueNumber)\nPublication Month: \(publicationMonth)\nBorrowed?: \(isBorrowed)")
    }
}
