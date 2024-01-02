//
//  ContentView.swift
//  Abraham Estrada Portfolio
//
//  Created by Abraham Estrada on 9/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    IntroductionView()
                    Divider()
                    SkillsView()
                    Divider()
                    EducationView()
                    Divider()
                    ProjectsView()
                    Divider()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
