//
//  DetailView.swift
//  Navigation
//
//  Created by iMac on 18/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//


import SwiftUI

struct DetailView: View {
    let branches: String
    
    var body: some View {
        Text(branches)
            .navigationBarTitle(Text(branches), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(branches: "Test") //R.K You can pass anything
    }
}
