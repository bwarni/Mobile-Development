//
//  ItemStore.swift
//  HorseManager
//
//  Created by Michael Warnick on 4/4/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        // Get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        // Remove item from array
        allItems.remove(at: fromIndex)
        // Insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
    }
}

/*
 Bronze Challenge
 class ItemStore {
 
 var allItems = [Item]()
 
 @discardableResult func createItem() -> Item {
 let newItem = Item(random: true)
 
 allItems.append(newItem)
 
 return newItem
 }
 
 func filterItemsBy(_ horseAge: Int = 10) -> [[Item]] {
 var filteredItems = [[Item](), [Item]()]
 for item in allItems {
 if item.age > horseAge {
 filteredItems[0].append(item)
 } else {
 filteredItems[1].append(item)
 }
 }
 return filteredItems
 }
 
 init() {
 for _ in 0..<5 {
 createItem()
 }
 }
 }
 
 */

