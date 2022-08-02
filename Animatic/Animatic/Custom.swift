//
//  Custom.swift
//  Animatic
//
//  Created by Domenico De Luca on 07/02/22.
//

import SwiftUI

struct Custom: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(UIColor.systemGray6)
                
                Text("Create your personal animation")
                
            }
            .navigationTitle("Custom")
        }
    }
}

struct Custom_Previews: PreviewProvider {
    static var previews: some View {
        Custom()
    }
}
