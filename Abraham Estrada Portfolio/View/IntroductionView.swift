//
//  IntroductionView.swift
//  Abraham Estrada Portfolio
//
//  Created by Abraham Estrada on 9/2/21.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        VStack {
            Image("abraham")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .shadow(radius: 10)
            Text("Abraham Estrada")
                .padding(.top)
                .font(Font.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(.black)
            Text("iOS Developer")
                .padding(.bottom)
                .font(Font.system(size: 18, weight: .regular, design: .default))
                .foregroundColor(.black)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            IntroductionView()
        }
    }

}
