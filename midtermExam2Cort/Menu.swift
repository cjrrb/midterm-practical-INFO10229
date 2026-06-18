//
//  Menu.swift
//  midtermExam2Cort
//
//  Created by Cort Reynolds-Bolan on 2026-06-18.
//

import Foundation

//Get Inputs
func getIntInput(prompt: String) -> Int {
    print(prompt)
    let text: String = readLine()!
    guard let number = Int(text) else {
        print("Invalid input. Please enter a valid number.\n")
        return getIntInput(prompt: prompt)
    }
    
    return number
}

func getDoubleInput(prompt: String) -> Double {
    print(prompt)
    let text: String = readLine()!
    guard let number = Double(text) else {
        print("Invalid input. Please enter a valid number.\n")
        return getDoubleInput(prompt: prompt)
    }
    
    return number
}

//Display Menu
func menu() {
    print("===== Library Management System =====")
    print("1. Add Book")
    print("2. Add Magazine")
    print("3. Display All Items")
    print("4. Search Item")
    print("5. Borrow Item")
    print("6. Return Item")
    print("7. Delete Item")
    print("8. Exit")
    
    let choice: Int = getIntInput(prompt: "Enter your choice: ")
    
    switch choice {
    case 1:
        addBook()
    case 2:
        addMagazine()
    case 3:
        displayLibrary()
    case 4:
        searchLibrary()
    case 5:
        borrowItem()
    case 6:
        returnItem()
    case 7:
        deleteItem()
    case 8:
        print("Exiting...")
        exit(0)
    default:
        print("Invalid input. Please enter a valid number.\n")
        menu()
    }
}
