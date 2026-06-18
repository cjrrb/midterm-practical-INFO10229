//
//  LibraryManagement.swift
//  midtermExam2Cort
//
//  Created by Cort Reynolds-Bolan on 2026-06-18.
//

import Foundation

var libraryItems: [String : LibraryItem] = [:]

//Add Book
func addBook() {
    var itemID: String
    var title: String
    var author: String
    var numberOfPages: Int
    
    //Get item ID from user
    repeat {
        print("Enter Item ID:")
        itemID = readLine()!
        if itemID.isEmpty {
            print("ID cannot be empty.\n")
        }
        
        if libraryItems.contains(where: { $0.value.itemID == itemID }) {
            print("Item with ID \(itemID) already exists.\n")
        }
    } while itemID.isEmpty
    
    //Get title from user
    repeat {
        print("Enter Title:")
        title = readLine()!
        if title.isEmpty {
            print("Title cannot be empty.\n")
        }
    } while title.isEmpty
    
    //Get author from user
    repeat {
        print("Enter Author:")
        author = readLine()!
        if author.isEmpty {
            print("Author cannot be empty.\n")
        }
    } while author.isEmpty
    
    //Get number of pages from user
    repeat {
        numberOfPages = getIntInput(prompt: "Enter Number of Pages:")
        if numberOfPages <= 0 {
            print("Number of pages must be greater than 0.\n")
        }
    } while numberOfPages <= 0
    
    let book = Book(itemID: itemID, title: title, author: author, numberOfPages: numberOfPages, isBorrowed: false)
    libraryItems[itemID] = book
    print("Book added to library.")
}

//Add Magazine
func addMagazine() {
    var itemID: String
    var title: String
    var issueNumber: Int
    var publicationMonth: String
    
    //Get item ID from user
    repeat {
        print("Enter Item ID:")
        itemID = readLine()!
        if itemID.isEmpty {
            print("ID cannot be empty.\n")
        }
        
        if libraryItems.contains(where: { $0.value.itemID == itemID }) {
            print("Item with ID \(itemID) already exists.\n")
        }
    } while itemID.isEmpty
    
    //Get title from user
    repeat {
        print("Enter Title:")
        title = readLine()!
        if title.isEmpty {
            print("Title cannot be empty.\n")
        }
    } while title.isEmpty
    
    //Get issue number from user
    repeat {
        issueNumber = getIntInput(prompt: "Enter Issue Number:")
        if issueNumber <= 0 {
            print("Issue number must be greater than 0.\n")
        }
    } while issueNumber <= 0
    
    //Get publication month from user
    repeat {
        print("Enter Publication Month:")
        publicationMonth = readLine()!
        if publicationMonth.isEmpty {
            print("Publication month cannot be empty.\n")
        }
    } while publicationMonth.isEmpty
    
    let magazine = Magazine(itemID: itemID, title: title, issueNumber: issueNumber, publicationMonth: publicationMonth, isBorrowed: false)
    
    libraryItems[itemID] = magazine
    print("Magazine added to library.")
}

//Display Library
func displayLibrary() {
    if libraryItems.isEmpty {
        print("Library is empty.\n")
        return
    }
    
    print("Library:")
    for (_, item) in libraryItems {
        item.displayInfo()
    }
}

//Search Library by ID
func searchLibrary() {
    if libraryItems.isEmpty {
        print("Library is empty.\n")
        return
    }
    
    var idToSearch: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToSearch = readLine() ?? ""
        if idToSearch.isEmpty {
            print("ID cannot be empty.\n")
        }
    } while idToSearch.isEmpty
    
    if !libraryItems.keys.contains(idToSearch) {
        print("Item with ID \(idToSearch) not found.\n")
        return
    }
    
    let item = libraryItems[idToSearch]!
    item.displayInfo()
}

//Borrow item by ID
func borrowItem() {
    if libraryItems.isEmpty {
        print("Library is empty.\n")
        return
    }
    
    var idToBorrow: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToBorrow = readLine() ?? ""
        if idToBorrow.isEmpty {
            print("ID cannot be empty.\n")
        }
    } while idToBorrow.isEmpty
    
    if !libraryItems.keys.contains(idToBorrow) {
        print("Item with ID \(idToBorrow) not found.\n")
        return
    }
    
    let item = libraryItems[idToBorrow]!
    item.borrowItem()
}

//Return item by ID
func returnItem() {
    if libraryItems.isEmpty {
        print("Library is empty.\n")
        return
    }
    
    var idToReturn: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToReturn = readLine() ?? ""
        if idToReturn.isEmpty {
            print("ID cannot be empty.\n")
        }
    } while idToReturn.isEmpty
    
    if !libraryItems.keys.contains(idToReturn) {
        print("Item with ID \(idToReturn) not found.\n")
        return
    }
    
    let item = libraryItems[idToReturn]!
    item.returnItem()
}

//Delete Item
func deleteItem() {
    if libraryItems.isEmpty {
        print("Library is empty.\n")
        return
    }
    
    var idToDelete: String
    
    repeat {
        print("Enter ID of item to delete:")
        idToDelete = readLine() ?? ""
        if idToDelete.isEmpty {
            print("ID cannot be empty.\n")
        }
    } while idToDelete.isEmpty
    
    if !libraryItems.keys.contains(idToDelete) {
        print("Item with ID \(idToDelete) not found.\n")
        return
    }
    
    libraryItems.removeValue(forKey: idToDelete)
    print("Library item with ID: \(idToDelete) has been deleted.\n")
}
