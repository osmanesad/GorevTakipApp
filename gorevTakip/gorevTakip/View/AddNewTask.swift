//
//  AddNewTask.swift
//  gorevTakip
//
//  Created by Osman Esad on 21.08.2022.
//

import SwiftUI

struct AddNewTask: View {
    @EnvironmentObject var taskModel: TaskViewModel
    // MARK: All Enviroment Values in one Variable -
    @Environment(\.self) var env
    var body: some View {
        VStack(spacing: 12){
            Text("Düzenle")
                .font(.title3.bold())
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading){
                    Button{
                        env.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .foregroundColor(.black)
                        
                    }
                }
            
            VStack(alignment: .leading, spacing: 12){
                Text("Görev Rengi")
                    .font(.caption)
                    .foregroundColor(.gray)
                // MARK: Sample Card Colors
                let colors: [String] = ["Sarı","Yeşil","Kırmızı","Mavi","Mor","Turuncu"]
                
                HStack(spacing:15){
                    ForEach(colors, id: \.self){ color in
                        
                        Circle()
                            .fill(Color(color))
                            .frame(width: 25, height: 25)
                        
                        
                    }
                }
                
            }
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

struct AddNewTask_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTask()
            .environmentObject(TaskViewModel())
    }
}
