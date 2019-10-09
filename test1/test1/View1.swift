//
//  View1.swift
//  test1
//
//  Created by User11 on 2019/10/2.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI


struct View1: View {
    @State var a = 0.0
    @State var selectDate = Date()
    @State var st = ""
    @State var t = true
    var colors = ["Red", "Green", "Blue", "Purple"]
    @State var selectedColor = 0
    var body: some View {
        VStack {
         
            if(t){
                Image(systemName: "sun.max.fill")
                   .resizable()
                   .frame(width: 100, height: 100)
                   .brightness(a)
                   
                Text("太陽公公出來了，他對我呀笑呀笑")
            }
            else{
                Image(systemName: "cloud.rain.fill")
                   .resizable()
                   .frame(width: 100, height: 100)
                   .brightness(a)
                   
                Text("下雨了，不知道什麼時候太陽公公才會出來")
            }
              
            Form {
                Toggle(isOn: $t) {
                    Slider(value: $a, in: 0.0...1.0, step: 0.01, minimumValueLabel: Image(systemName: "sun.max.fill"), maximumValueLabel: Image(systemName: "sun.max")) {
                        Text("")
                        }
                }
                OwO(selectDate: $selectDate)

                Text("選擇的時間"+date2String(selectDate))

                TextField(" Enter some text", text: $st)
                Text("輸入的文字:"+st)
                HStack{
                    Text("選擇顏色:")
                    Picker( "", selection: $selectedColor) {
                        ForEach(0 ..< colors.count) {
                          Text(self.colors[$0])
                       }
                    }.pickerStyle(WheelPickerStyle()).frame(width: 300, height: 50)
                    .clipped()
                }
                    

                
                Text("你選擇了: \(colors[selectedColor])")
                
            }
            Spacer()
            
        }
        
        
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}

func date2String(_ date:Date, dateFormat:String = "yyyy-MM-dd") -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale.init(identifier: "zh_CN")
    formatter.dateFormat = dateFormat
    let date = formatter.string(from: date)
    return date
}

struct OwO: View {
    @Binding var selectDate :Date
    var body: some View {
        DatePicker("", selection: self.$selectDate,  displayedComponents: .date)
    }
}
