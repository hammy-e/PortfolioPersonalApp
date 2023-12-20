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
            VStack {
                IntroductionView()
                Divider()
                SkillsView()
                Divider()
                EducationView()
                Divider()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
