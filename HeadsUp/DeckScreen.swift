//
//  DeckScreen.swift
//  HeadsUp
//
//  Created by Julia Chu on 7/27/23.
//

import SwiftUI


struct DeckScreen: View {
    var colorSet = [
        Color(red:252/255, green:193/255, blue:81/255),
        Color(red:157/255, green:206/255, blue:221/255),
        Color(red:241/255, green:84/255, blue:43/255),
        Color(red:146/255, green:188/255, blue:122/255)]
    var body: some View {
        NavigationView{
            VStack(spacing:0){
                ForEach(0..<3){
                    row in
                    HStack(spacing:0){
                        ForEach(0..<2){
                            col in
                            Rectangle()
                                .fill(colorSet[row+col])
                                .frame(height:300)
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct DeckScreen_Previews: PreviewProvider {
    static var previews: some View {
        DeckScreen()
    }
}
