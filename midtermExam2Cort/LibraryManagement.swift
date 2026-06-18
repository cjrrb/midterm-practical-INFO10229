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
    
}

//Add Magazine
func addMagazine() {
    
}

//Display Library
func displayLibrary() {
    if libraryItems.isEmpty {
        print("Library is empty.")
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
        print("Library is empty.")
        return
    }
    
    var idToSearch: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToSearch = readLine() ?? ""
        if idToSearch.isEmpty {
            print("ID cannot be empty.")
        }
    } while idToSearch.isEmpty
    
    if !libraryItems.keys.contains(idToSearch) {
        print("Item with ID \(idToSearch) not found.")
        return
    }
    
    let item = libraryItems[idToSearch]!
    item.displayInfo()
    
}

//Borrow item by ID
func borrowItem() {
    if libraryItems.isEmpty {
        print("Library is empty.")
        return
    }
    
    var idToBorrow: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToBorrow = readLine() ?? ""
        if idToBorrow.isEmpty {
            print("ID cannot be empty.")
        }
    } while idToBorrow.isEmpty
    
    if !libraryItems.keys.contains(idToBorrow) {
        print("Item with ID \(idToBorrow) not found.")
        return
    }
    
    let item = libraryItems[idToBorrow]!
    item.borrowItem()
}

//Return item by ID
func returnItem() {
    if libraryItems.isEmpty {
        print("Library is empty.")
        return
    }
    
    var idToReturn: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToReturn = readLine() ?? ""
        if idToReturn.isEmpty {
            print("ID cannot be empty.")
        }
    } while idToReturn.isEmpty
    
    if !libraryItems.keys.contains(idToReturn) {
        print("Item with ID \(idToReturn) not found.")
        return
    }
    
    let item = libraryItems[idToReturn]!
    item.returnItem()
    print("Item successfully returned.")
}

//Delete Item
func deleteItem() {
    if libraryItems.isEmpty {
        print("Library is empty.")
        return
    }
    
    var idToDelete: String
    
    repeat {
        print("Enter ID of item to search for:")
        idToDelete = readLine() ?? ""
        if idToDelete.isEmpty {
            print("ID cannot be empty.")
        }
    } while idToDelete.isEmpty
    
    if !libraryItems.keys.contains(idToDelete) {
        print("Item with ID \(idToDelete) not found.")
        return
    }
    
    let item = libraryItems[idToDelete]!
    libraryItems.removeValue(forKey: idToDelete)
    print("Library item with ID: \(idToDelete) has been deleted.")
}
