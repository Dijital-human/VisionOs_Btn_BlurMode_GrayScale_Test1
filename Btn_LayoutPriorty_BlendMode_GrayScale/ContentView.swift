//
//  ContentView.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Button Style Test - 1").font(.extraLargeTitle)
            Text("Buttonlar muxtelif formalarda hazirlanaraq xususi gorunusler vererek istifade ede bilerik").font(.title).foregroundStyle(.secondary)
            Text("Cerceve Buttonlar").font(.title).monospaced()
            HStack(spacing: 10.0){
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.horizontal").foregroundStyle(.red)
                    }.frame(width: 250, height: 50)
                }).font(Font.custom("Optima", size: 34)).background(RoundedRectangle(cornerRadius: 25.0).stroke(.red,lineWidth: 3)).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.horizontal").foregroundStyle(.blue)
                    }.frame(width: 250, height: 50)
                }).font(Font.custom("Optima", size: 34)).background(RoundedRectangle(cornerRadius: 25.0).stroke(.blue,lineWidth: 3)).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)

                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.horizontal").foregroundStyle(.white)
                    }.frame(width: 250, height: 50)
                }).font(Font.custom("Optima", size: 34)).background(RoundedRectangle(cornerRadius: 25.0).stroke(.white,lineWidth: 3)).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    
            }
            
            Text("Arxa plan rengli Buttonlar").font(.title).monospaced()
            HStack(spacing: 10.0){
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.horizontal.fill").shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    }.frame(width: 250, height: 50).font(Font.custom("Futura", size: 32))
                }).background(Color.red).clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.horizontal.fill").shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    }.frame(width: 250, height: 50).font(Font.custom("Futura", size: 32))
                }).background(Color.blue).clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                Button(action: {}, label: {
                    HStack{
                        Text("Save").foregroundStyle(.black)
                        Image(systemName: "button.horizontal.fill").shadow(color: .black, radius: 3, x: 0.0, y: 0.0).foregroundStyle(.black)
                    }.frame(width: 250, height: 50).font(Font.custom("Futura", size: 32))
                }).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 25.0))
            }
            Text("StrokeStyle Metodunu istifade ederek Button").font(.title).monospaced()
            HStack{
                Button(action: {}, label: {
                    VStack(spacing: 3.0){
                        Image(systemName: "button.horizontal.top.press.fill")
                        Text("Save")
                    }.frame(width: 250, height: 80).font(Font.custom("Papyrus", size: 32))
                }).background(.red).clipShape(Capsule()).overlay {
                    RoundedRectangle(cornerRadius: 50.0).stroke(.white, style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round, miterLimit: 1.0, dash: [5, 10], dashPhase: 2.0))
                }
                
                Button(action: {}, label: {
                    VStack(spacing: 3.0){
                        Image(systemName: "button.horizontal.top.press.fill")
                        Text("Save")
                    }.frame(width: 250, height: 80).font(Font.custom("Papyrus", size: 32))
                }).background(.blue).clipShape(Capsule()).overlay {
                    RoundedRectangle(cornerRadius: 50.0).stroke(.white, style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round, miterLimit: 1.0, dash: [5, 10], dashPhase: 2.0))
                }
                Button(action: {}, label: {
                    VStack(spacing: 3.0){
                        Image(systemName: "button.horizontal.top.press.fill")
                        Text("Save")
                    }.frame(width: 250, height: 80).font(Font.custom("Papyrus", size: 32)).foregroundStyle(.black)
                }).background(.white).clipShape(Capsule()).overlay {
                    RoundedRectangle(cornerRadius: 50.0).stroke(.white, style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round, miterLimit: 1.0, dash: [5, 10], dashPhase: 2.0))
                }
            }
            Text("Cerceve Style Buttom").font(Font.custom("Georgia", size: 28))
            HStack{
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.vertical.left.press.fill").foregroundStyle(.red)
                    }.frame(width: 250, height: 60).font(Font.custom("Optima", size: 28))

                })
                .overlay {
                    RoundedRectangle(cornerRadius: 50.0).stroke(.red, style: StrokeStyle(lineWidth: 3.0, dash: [5, 10]))
                }
                
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.vertical.left.press.fill").foregroundStyle(.blue)
                    }.frame(width: 250, height: 60).font(Font.custom("Optima", size: 28))

                })
                .overlay {
                    RoundedRectangle(cornerRadius: 50.0).stroke(.blue, style: StrokeStyle(lineWidth: 3.0, dash: [5, 10]))
                }
                
                Button(action: {}, label: {
                    HStack{
                        Text("Save")
                        Image(systemName: "button.vertical.left.press.fill").foregroundStyle(.white)
                    }.frame(width: 250, height: 60).font(Font.custom("Optima", size: 28))

                })
                .overlay {
                    RoundedRectangle(cornerRadius: 50.0).stroke(.white, style: StrokeStyle(lineWidth: 3.0, dash: [5, 10]))
                }
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
