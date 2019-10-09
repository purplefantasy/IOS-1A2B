//
//  ViewGame.swift
//  test1
//
//  Created by User11 on 2019/10/2.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct ViewGame: View {
    @State var n1 = 10
    @State var n2 = 10
    @State var n3 = 10
    @State var n4 = 10
    @State var sum = " "
    @State var ans1 = Int.random(in: 1...9)
    @State var ans2 = 10
    @State var ans3 = 10
    @State var ans4 = 10
    @State var i = 0
    @State var a = 0
    @State var b = 0
    @State var showingAlert = false

    func num(n:Int) -> Void {
        if(i==0){
            i=1
            ini()
        }
        if(n1 == 10){
            n1=n
        }else if(n2==10 && n != n1){
            n2=n
        }else if(n3==10 && n != n2 && n != n1){
            n3=n
        }else if(n4==10 && n != n1 && n != n2 && n != n3){
            n4=n
        }
    }
    
    func ini() -> Void {
        ans2 = Int.random(in: 1...9)
        while(ans1==ans2){
            ans2 = Int.random(in: 1...9)
        }
        ans3 = Int.random(in: 1...9)
        while(ans3==ans2){
            ans3 = Int.random(in: 1...9)
        }
        ans4 = Int.random(in: 1...9)
        while(ans4==ans3){
            ans4 = Int.random(in: 1...9)
        }
    }

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "\(a).circle").resizable()
                .frame(width: 50.0, height: 50.0)
                Image(systemName: "a.square").resizable()
                .frame(width: 50.0, height: 50.0)
                Image(systemName: "\(b).circle").resizable()
                .frame(width: 50.0, height: 50.0)
                Image(systemName: "b.square").resizable()
                .frame(width: 50.0, height: 50.0)
            }
            .padding(50)
            .padding(.top, 50).padding(.bottom, -20)
            Text(sum)
            HStack {
                nimg(n:$n1)
                nimg(n:$n2)
                nimg(n:$n3)
                nimg(n:$n4)
            }
            .padding(50).padding(.top, -20)
            HStack {
                Button(action: {
                    self.num(n: 1)
                }) {
                      Image(systemName: "1.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
                Spacer()
                Button(action: {
                   self.num(n: 2)
                }) {
                      Image(systemName: "2.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
                Spacer()
                Button(action: {
                   self.num(n: 3)
                }) {
                      Image(systemName: "3.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
            }
            .padding(50).padding(.top, -50)
            HStack {
                Button(action: {
                   self.num(n: 4)
                }) {
                      Image(systemName: "4.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
                Spacer()
                Button(action: {
                   self.num(n: 5)
                }) {
                      Image(systemName: "5.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
                Spacer()
                Button(action: {
                   self.num(n: 6)
                }) {
                      Image(systemName: "6.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
            }
            .padding(50).padding(.top, -50)
            HStack {
                Button(action: {
                   self.num(n: 7)
                }) {
                      Image(systemName: "7.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
                Spacer()
                Button(action: {
                   self.num(n: 8)
                }) {
                      Image(systemName: "8.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
                Spacer()
                Button(action: {
                   self.num(n: 9)
                }) {
                      Image(systemName: "9.square")
                    .resizable()
                    .frame(width: 70.0, height: 70.0)
                }
            }
            .padding(50).padding(.top, -50).padding(.bottom, -50)
            HStack {
                Button(action: {
                    self.ans1 = Int.random(in: 1...9)
                    self.ans2 = 10
                    self.ans3 = 10
                    self.ans4 = 10
                    self.ini()
                    self.sum=" "
                    self.a=0
                    self.b=0

                }) {
                    Image(systemName: "repeat")
                    Text("開新遊戲")
                }
                Spacer()
                Button(action: {
                    self.n1=10
                    self.n2=10
                    self.n3=10
                    self.n4=10
                }) {
                    Image(systemName: "xmark.octagon")
                    Text("重置數字")
                }
                Spacer()
                Button(action: {
                    if(self.n4<10){
                        self.a=0
                        self.b=0
                        if(self.n1==self.ans1){
                            self.a+=1
                        }
                        if(self.n2==self.ans2){
                            self.a+=1
                        }
                        if(self.n3==self.ans3){
                            self.a+=1
                        }
                        if(self.n4==self.ans4){
                            self.a+=1
                        }
                        if(self.n1==self.ans2||self.n1==self.ans3||self.n1==self.ans4){
                            self.b+=1
                        }
                        if(self.n2==self.ans1||self.n2==self.ans3||self.n2==self.ans4){
                            self.b+=1
                        }
                        if(self.n3==self.ans2||self.n3==self.ans1||self.n3==self.ans4){
                            self.b+=1
                        }
                        if(self.n4==self.ans2||self.n4==self.ans3||self.n4==self.ans1){
                            self.b+=1
                        }
                        self.sum = "\(self.n1)\(self.n2)\(self.n3)\(self.n4)"
                        self.n1=10
                        self.n2=10
                        self.n3=10
                        self.n4=10
                        if(self.a==4){
                            self.showingAlert = true
                            self.ans1 = Int.random(in: 1...9)
                            self.ans2 = 10
                            self.ans3 = 10
                            self.ans4 = 10
                            self.ini()
                            self.sum=" "
                            self.a=0
                            self.b=0
                        }
                    }
                }) {
                    Image(systemName: "play.circle")
                    Text("確認答案")
                }.alert(isPresented: $showingAlert) {
                    Alert(title: Text("恭喜你"), message: Text("你猜對了"), dismissButton: .default(Text("開新遊戲!")))
                }

            }.padding(50)
        }
        
    }
}

struct ViewGame_Previews: PreviewProvider {
    static var previews: some View {
        ViewGame()
    }
}



struct nimg: View {
    @Binding var n:Int
    var body: some View {
        if(n<10){
            return Image(systemName: "\(n)"+".square")
            .resizable()
            .frame(width: 70.0, height: 70.0)
        }
        return Image(systemName: "square")
        .resizable()
        .frame(width: 70.0, height: 70.0)
        
    }
}
