//
//  ContentView.swift
//  gorevTakip
//
//  Created by Osman Esad on 21.08.2022.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        
        NavigationView{
            Home()
                .navigationBarTitle("Görev Yöneticisi") // Task Manager
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }

    

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
