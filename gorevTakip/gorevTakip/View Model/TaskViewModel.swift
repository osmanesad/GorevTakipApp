//
//  TaskViewModel.swift
//  gorevTakip
//
//  Created by Osman Esad on 21.08.2022.
//

import SwiftUI
import CoreData

class TaskViewModel: ObservableObject {
    @Published var currentTab: String = "Bugün"
// MARK: New Task Properties -
    @Published var openEditTask: Bool = false
    @Published var taskTitle: String = ""
    @Published var taskColor: String = "Yeşil"
    @Published var taskDeadline: Date = Date()
    @Published var taskType: String = "Okunacaklar"
    
// MARK: Adding Task To Core Data
    
}


