//
//  ContentView.swift
//  gorevTakip
//
//  Created by Osman Esad on 21.08.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            
            Home()
                .navigationBarTitle("Remimder")
                
                .navigationBarTitleDisplayMode(.inline)
                
        }
        
    
  
    }
}

struct ProfilView: View {
    var body: some View {
        Image(systemName: "bell")
            .resizable()
            .scaledToFit()
            .frame(width:20, height: 20)
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
