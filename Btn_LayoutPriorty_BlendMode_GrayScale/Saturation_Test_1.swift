//
//  Saturation_Test_1.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI

struct Saturation_Test_1: View {
    let dereceler = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 2.0, 3.0]
    let rengler: [Color] = [.red, .blue, .cyan, .yellow, .green, .orange, .blue]
    var body: some View {
        VStack{
            Text("Saturation Test - 1").font(.extraLargeTitle)
            
//            ForEach(1...8,id: \.self){item1 in
//                HStack{
//                    ForEach(1...8, id: \.self){item2 in
//                        Rectangle()
//                            .foregroundStyle(
//                                (item1 + item2) % 2 == 0
//                                ?
//                                Color.red
//                                :
//                                Color.blue
//                            )
//                            .frame(width: 60, height: 60)
//                    }
//                }
//            }
//            VStack(spacing:3) {
//                ForEach(1...8, id:\.self) { r in
//                    HStack(spacing:3) {
//                        ForEach(1...8, id:\.self) { c in
//                            ZStack {
//                                Rectangle()
//                                    .fill(((r+c)%2 == 0) ? Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)) : Color(#colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)))
//                                    .frame(width: 50, height: 50)
//                            }
//                        }
//                    }
//                }
//            }
//            ForEach(rengler,id: \.self){ reng in
//                HStack(spacing: 10.0){
//                    reng.frame(width: 80, height: 80).overlay {
//                        Text("original")
//                    }
//                    ForEach(dereceler, id: \.self) {derece in
//                        VStack{
//                            reng.frame(width: 80, height: 80).saturation(derece).overlay {
//                                Text("\(String(format: "%.1f",derece))")
//                            }
//                        }
//                    }
//                }
//            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    Saturation_Test_1()
}
