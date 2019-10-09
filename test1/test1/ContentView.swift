//
//  ContentView.swift
//  test1
//
//  Created by User11 on 2019/9/18.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isRain = true
    
   
    var body: some View {
            
        TabView {
            
            ViewGame()
                .tabItem{
                    HStack{
                        Image(systemName: "cube.box")
                        Text("1A2B")
                    }
                    
            }
            View1()
                .tabItem {
                    HStack{
                        Image(systemName: "rectangle.stack.badge.plus")
                        Text("其他功能")
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




