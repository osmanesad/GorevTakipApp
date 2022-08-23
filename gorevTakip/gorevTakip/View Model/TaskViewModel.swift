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
    @Published var taskColor: String = "Sarı"
    @Published var taskDeadline: Date = Date()
    @Published var taskType: String = "Okunacaklar"
    @Published var showDatePicker: Bool = false
    
    // MARK: Editing Existing Task Data
    @Published var editTask: Task?
    
// MARK: Adding Task To Core Data
    
    func addTask(context: NSManagedObjectContext)->Bool{
        
        // MARK: Updating Existing in Core Data
        var task: Task!
        if let editTask = editTask {
            task = editTask
        } else {
            task = Task(context: context)
        }
        
        
        task.title = taskTitle
        task.color = taskColor
        task.deadline = taskDeadline
        task.type = taskType
        task.isCompleted = false
        
        if let _ = try? context.save() {
            return true
        }
        return false
    }
    
//MARK: Resetting Data -
    func resetTaskData(){
        taskType = "Okunacaklar"
        taskColor = "Sarı"
        taskTitle = ""
        taskDeadline = Date()
    }
    
    
    // MARK: If Edit Task Is Available then Setting Exisiting Data
    
    func setupTask(){
        if let editTask = editTask {
            taskType = editTask.type ?? "Okunacaklar"
            taskColor = editTask.color ?? "Sarı"
            taskTitle = editTask.title ?? ""
            taskDeadline = editTask.deadline ?? Date()
        }
    }
}


