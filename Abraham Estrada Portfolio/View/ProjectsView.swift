//
//  ProjectsView.swift
//  Abraham Estrada Portfolio
//
//  Created by Abraham Estrada on 1/1/24.
//

import SwiftUI

struct ProjectsView: View {
    var body: some View {
        VStack {
            Text("Projects")
                .padding(8)
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            SingleProjectView(name: "Bee", desc: "iOS Social Media Application", imageName: "bee")
            SingleProjectView(name: "Listcheck", desc: "iOS Task Reminder Application", imageName: "listcheck")
            SingleProjectView(name: "COVIDWATCH", desc: "iOS Covid-19 Tracker Application", imageName: "covidwatch")
        }
        .padding(.horizontal)
    }
    
    struct SingleProjectView: View {
        
        var name: String
        var desc: String
        var imageName: String
        
        var body: some View {
            GeometryReader { geo in
                ZStack {
                    Color.white
                    VStack {
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(12)
                        VStack(alignment: .center) {
                            Text(name)
                                .font(Font.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(.black)
                            Text(desc)
                                .font(Font.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding()
                }
                .frame(width: geo.size.width, height: 175, alignment: .center)
                .cornerRadius(12)
                .shadow(radius: 8)
            }
            .frame(width: .infinity, height: 175, alignment: .center)
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
