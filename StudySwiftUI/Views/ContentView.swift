//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Money Ai on 2021/4/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //Pass environment object modelData to subviews
        ContentView()
            .environmentObject(ModelData())
    }
}
