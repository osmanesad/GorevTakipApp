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
    @Published var showDatePicker: Bool = false
    
// MARK: Adding Task To Core Data
    
    func addTask(context: NSManagedObjectContext)->Bool{
        let task = Task(context: context)
        task.title = taskTitle
        task.color = taskColor
        task.deadline = taskDeadline
        task.type = taskType
        
        if let _ = try? context.save() {
            return true
        }
        return false
    }
    
//MARK: Resetting Data -
    func resetTaskData(){
        taskType = "Yapılacaklar"
        taskColor = "Sarı"
        taskTitle = ""
        taskDeadline = Date()
    }
    
}


