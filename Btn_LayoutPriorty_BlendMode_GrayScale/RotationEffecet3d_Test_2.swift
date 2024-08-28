//
//  RotationEffecet3d_Test_2.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI

struct RotationEffecet3d_Test_2: View {
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State private var slider = -320.0
    var body: some View {
        VStack{
            //Text("Rotation Effecet 3d Test - 2")
            ZStack{
                Color.white
            }.frame(maxWidth: 200, maxHeight: 200)
                .rotation3DEffect(.degrees(slider), axis: (x: 0, y: 0, z: 1))
                //.offset(x: slider, y: slider)
            
            ZStack{
                Color.white
            }.frame(maxWidth: 200, maxHeight: 200)
                .rotation3DEffect(.degrees(slider), axis: (x: 0, y: 0, z: 1),anchor: .topLeadingFront)
//                .onReceive(timer, perform: { _ in
//                    slider = slider > 360 ? -320 : (slider + 10.0)
//                })
            
        }.font(.extraLargeTitle)
    }
}

#Preview(windowStyle: .automatic) {
    RotationEffecet3d_Test_2()
}
