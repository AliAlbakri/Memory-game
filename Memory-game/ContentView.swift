//
//  ContentView.swift
//  Memory-game
//
//  Created by Ali Ahmad on 14/06/2021.
//  Copyright © 2021 Ali Ahmed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            ForEach(0..<4 ){ index in
                CardView(isFaceUp: false)
            }
            
        }
        
              .padding()
              .foregroundColor(Color.orange)
                  .font(Font.largeTitle)
    }
      
}


struct CardView : View{
    
    var isFaceUp : Bool
    
    var body: some View{
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth:5)
                Text("👻")
            }
            else {
                RoundedRectangle(cornerRadius: 10)
                .fill()
            }
            
            

             
            
        }
        
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}