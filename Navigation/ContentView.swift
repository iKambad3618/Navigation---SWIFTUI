//
//  ContentView.swift
//  Navigation
//
//  Created by iMac on 18/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let branches = ["India", "U.S","Australia","Norway"]
    
    //R.K Setting the navigation bar background color
    init(){
        UINavigationBar.appearance().backgroundColor = .cyan
    }
    var body: some View {
        //R.K Navigation view is navigation bar of top
        NavigationView{
            
            //R.K List is the all records of branches array
            List(branches, id: \.self) { branches in
                //Navigation link is Right arrow and linking to Child page
                NavigationLink(
                destination: DetailView(branches: branches)){
                    Text(branches)
                }
            }
                //R.K Showing title of all branches with custom headline font
                .navigationBarTitle("Evince Development",displayMode: .inline).font(.headline)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
