//
//  Home.swift
//  HeadsUp
//
//  Created by Julia Chu on 7/18/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .opacity(0.4)
            Button(action: {
                print("HI")
            }) {
                Text("Start")
                    .font(.custom("Silkscreen-Regular", size: 50))
                    .foregroundColor(.black)
                    .padding(5)
            }
            .background()
            .cornerRadius(5)
        }

        }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

