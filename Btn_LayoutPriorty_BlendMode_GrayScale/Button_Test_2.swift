//
//  Button_Test_2.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI

struct Button_Test_2: View {
    var body: some View {
        VStack(spacing: 20.0){
            Text("Button Style Test - 2").font(Font.custom("Optima", size: 42))
            Text("Buttonlara mustelif gorunusler vermek mumkundur").foregroundStyle(.secondary).underline(color: .red)
            
            HStack(spacing: 20.0){
                ZStack(alignment:.top){
                    Capsule()
                    Ellipse().foregroundStyle(.orange).offset(y: -10)
                    Button(action: {}, label: {
                        Text("Button")
                    })
                }.frame(width: 200, height: 60).clipped()
                
                ZStack(alignment:.top){
                    Capsule()
                    Ellipse().foregroundStyle(.orange).offset(y: 10)
                    Button(action: {}, label: {
                        Text("Button")
                    }).offset(y: 12.0)
                }.frame(width: 200, height: 60).clipped()
                
                ZStack(alignment:.top){
                    Capsule()
                    Ellipse().foregroundStyle(.blue).offset(y: 10)
                    Button(action: {}, label: {
                        Text("Button")//.frame(maxWidth: .infinity)
                    }).offset(y: 12.0).opacity(0.9)
                }.frame(width: 200, height: 60).clipped()
                
                ZStack(alignment:.top){
                    Capsule()
                    Ellipse().foregroundStyle(.blue).offset(y: -10)
                    Button(action: {}, label: {
                        Text("Button")
                    })
                }.frame(width: 200, height: 60).clipped()
            }
            
            HStack(spacing: 30.0){
                ZStack(alignment:.top){
                    Capsule().frame(width: 10, height: 200).offset(y: 40.0)
                    Ellipse().frame(width: 200, height: 50)
                    Button(action: {}, label: {
                        Text("Button").font(.extraLargeTitle)
                    }).background(Capsule().stroke(.white)).offset(y: 90.0)
                }.frame(width: 200, height: 200)
                
                ZStack(alignment:.center){
                    Rectangle()
                    Rectangle().foregroundStyle(.red).offset(x: 100.0)
                    Circle().padding().overlay {
                        Button(action: {}, label: {
                            Text("Button").frame(width: 200, height: 200)
                        }).background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.red]), startPoint: .leading, endPoint: .trailing)).shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                    }
                }.frame(width: 200, height: 200).clipped()
                
                ZStack(alignment:.center){
                    
                    Button(action: {}, label: {
                        Text("Button").font(.extraLargeTitle).frame(maxWidth: .infinity, maxHeight: .infinity)
                    }).background(Circle().stroke(.white))
                    RoundedRectangle(cornerRadius: 25.0).stroke(.red, lineWidth: 4)
                }.frame(width: 200, height: 200)

                
                
            }.padding().border(Color.black).clipped()
            HStack(spacing: 20.0){
                ZStack{
                    Rectangle().clipShape(Capsule()).frame(width: 200, height: 30)
                    Rectangle().clipShape(Capsule()).frame(width: 30, height: 200)
                    Circle().stroke(.white,lineWidth: 3).frame(width: 200, height: 200).overlay {
                        Button(action: {}, label: {
                            Text("Button").font(.largeTitle)
                        }).background(Capsule().stroke(.white,lineWidth: 10))
                    }
                }
                ZStack(alignment: .top, content: {
                    Rectangle()
                    GeometryReader(content: { geometry in
                        Image(systemName: "arrow.up.left").position(x: geometry.size.width / geometry.size.width + 10, y: geometry.size.height / geometry.size.height + 10)
                        Image(systemName: "arrow.up.right").position(x: geometry.size.width - 10, y: geometry.size.height / geometry.size.height + 10)
                        Image(systemName: "arrow.down.left").position(x: geometry.size.width / geometry.size.width + 10, y: geometry.size.height - 10)
                        Image(systemName: "arrow.down.right").position(x: geometry.size.width - 10, y: geometry.size.height - 10)
                        Image(systemName: "arrow.up.and.down.and.arrow.left.and.right").position(x: geometry.size.width * 0.5, y: geometry.size.height / 2)
                        Button(action: {}, label: {
                            Text("Button")
                        }).position(x: geometry.size.width * 0.5, y: geometry.size.height / geometry.size.height + 20)
                        Button(action: {}, label: {
                            VStack{
                                Text("B")
                                Text("u")
                                Text("t")
                                Text("t")
                                Text("o")
                                Text("n")
                            }
                        }).font(.title3).position(x: geometry.size.width / geometry.size.width + 20, y: geometry.size.height / 2)
                        
                    }).foregroundStyle(.red).font(.largeTitle)
                }).frame(width: 180, height: 180)
            }
            Button(action: {}, label: {
                Text("Button").frame(width: 400, height: 50)
            }).background(Color.red.mask(Capsule()))
        }.font(.title).italic()
    }
}

#Preview(windowStyle: .automatic) {
    Button_Test_2()
}
