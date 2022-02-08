//
//  ExplicitAnimation.swift
//  Animatic
//
//  Created by Domenico De Luca on 08/02/22.
//

import SwiftUI

struct ExplicitAnimation: View {
    @State var isAnimated:Bool = false
    @State var duration:Double = 0.5
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(UIColor.systemGray6)
                VStack{
                    RoundedRectangle(cornerRadius: isAnimated ? 50 : 5)
                        .fill(isAnimated ? Color.blue : Color.orange)
                        .frame(width: 100, height: 100)
                        .offset(y: isAnimated ? 300 : 10)
                        .padding()
                    
                    Spacer()
                    
                    Button("Animate"){
//                  Explicit Animation: withAnimation closure
                        withAnimation(.linear(duration: duration)){
                            isAnimated.toggle()
                        }
                    }
                    .padding()
                    .tint(.indigo)
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle(radius: 6))
                }
                .padding()
            }
            .navigationTitle("Explicit")
        }
    }
}

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
