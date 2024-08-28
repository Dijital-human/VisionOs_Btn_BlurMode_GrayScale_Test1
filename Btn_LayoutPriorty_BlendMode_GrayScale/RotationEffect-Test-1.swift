//
//  RotationEffect-Test-1.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI

struct RotationEffect_Test_1: View {
    @State private var slider = 0.0
    var body: some View {
        ZStack{
            //RoundedRectangle(cornerRadius: 25.0).foregroundStyle(.white)
            VStack{
                Text("Totation Effect Test - 1").font(.extraLargeTitle)
                Slider(value: $slider, in: 0...360, step: 1).padding(.horizontal, 40)

                HStack(spacing: 10.0){
                    ZStack{
                        Rectangle()
                    }.frame(width: 200, height: 180).foregroundStyle(.orange)
                        .rotation3DEffect(.degrees(slider), axis: (x: 1, y: 0, z: 0))//.shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    
                    ZStack{
                        Rectangle()
                    }.frame(width: 200, height: 180).foregroundStyle(.blue)
                        .rotation3DEffect(.degrees(slider), axis: (x: 0, y: 10, z: 0))
                    
                    ZStack{
                        Rectangle()
                    }.frame(width: 200, height: 180).foregroundStyle(.pink)
                        .rotation3DEffect(.degrees(slider), axis: (x: 0, y: 0, z: 1))
                    
                    ZStack{
                        Rectangle()
                        
                    }.frame(width: 200, height: 180).foregroundStyle(.white)
                        .rotation3DEffect(.degrees(slider), axis: (x: 1, y: 1, z: 1)).offset(x: slider, y: slider)

                    
                }
                Button(action: {
                    if slider == 360 {
                        slider = -200.0
                    }
                }, label: {
                    Text("Button")
                })
                
            }.foregroundStyle(.black)
            
        }
        
    }
}

#Preview(windowStyle: .automatic) {
    RotationEffect_Test_1()
}
