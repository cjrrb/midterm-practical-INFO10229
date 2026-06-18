//
//  LibraryManagement.swift
//  midtermExam2Cort
//
//  Created by Cort Reynolds-Bolan on 2026-06-18.
//

import Foundation

var libraryItems: [String : LibraryItem] = [:]

func addBook() {
    
}

func addMagazine() {
    
}

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

func borrowItem() {
    if libraryItems.isEmpty {
        print("Library is empty.")
        return
    }
}

func returnItem() {
    if libraryItems.isEmpty {
        print("Library is empty.")
        return
    }
}

func deleteItem() {
    if libraryItems.isEmpty {
        print("Library is empty.")
        return
    }
    
    
}
