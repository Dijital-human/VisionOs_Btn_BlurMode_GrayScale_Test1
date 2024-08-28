//
//  Sliders_Test_1.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI

struct Sliders_Test_1: View {
    @State private var slider = 0.0
    @State private var slider1 = 0.0

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let time = Timer(timeInterval: 0.1, repeats: true) { tim in
    }
    var body: some View {
        ZStack(alignment:.center){
            RoundedRectangle(cornerRadius: 25.0)//.rotationEffect(.degrees(slider))
                .rotation3DEffect(.degrees(slider), axis: (x: 1, y: 1, z: 1))
            VStack{
                Text("Rotation Effect").font(.extraLargeTitle).foregroundStyle(.black)
                    //.rotationEffect(.degrees(slider))
                //Slider(value: $slider, in: 1...360,step: 1)
                    //.frame(width: 600, height: 30)
                    //.background(Color.blue.clipShape(Capsule()))
                    //.blendMode(.colorBurn)
                    //.colorMultiply(.white)
                    //.tint(.blue)
                Text("\(time.fireDate.formatted(date: .complete, time: .standard))").foregroundStyle(.black).font(.extraLargeTitle)
                Button(action: {}, label: {
                    HStack{
                        Text("B")
                        Text("u")
                        Text("t")
                        Text("t")
                        Text("o")
                        Text("n")
                    }.padding(.horizontal, 40).foregroundStyle(.red)
                }).font(.extraLargeTitle)
            }.rotation3DEffect(.degrees(slider), axis: (x: 0, y: 1, z: 1)).shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            Slider(value: $slider, in: 0...360,step: 1).padding(.horizontal, 40)

            //.onReceive(timer, perform: { _ in
                
//                slider = slider > 360 ?  0.0 : (slider + 60.0)
//                //slider1 = slider > 360 ?  0.0 : (slider + 30.0)
//                
//            })
        }
    }
}

#Preview {
    Sliders_Test_1()
}
