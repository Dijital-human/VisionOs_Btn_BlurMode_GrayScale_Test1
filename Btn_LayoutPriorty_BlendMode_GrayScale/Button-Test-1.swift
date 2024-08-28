//
//  Button-Test-1.swift
//  Btn_LayoutPriorty_BlendMode_GrayScale
//
//  Created by Famil Mustafayev on 08.08.24.
//

import SwiftUI

struct Button_Test_1: View {
    @State private var slider = 0.5
    var body: some View {
        VStack(spacing: 10.0){
            Text("Button Test - 1").font(Font.custom("Georgia", size: 32))
            Text("About Button style").font(.largeTitle).fontWeight(.semibold).foregroundStyle(.secondary).monospaced()
            
            HStack(alignment: .top, spacing: 10.0, content: {
                Button(action: {}, label: {
                    Text("Sign In").frame(width: 200, height: 50).font(.title).italic()
                }).background(.cyan).clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0).grayscale(slider)
                
                Button(action: {}, label: {
                    Text("Sign In").frame(width: 200, height: 50).font(.title).italic()
                }).background(.purple).clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0).grayscale(slider)
                
                Button(action: {}, label: {
                    Text("Sign In").frame(width: 200, height: 50).font(.title).italic()
                }).background(Color.indigo).clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0).grayscale(slider)
                
                Button(action: {}, label: {
                    Text("Sign In").frame(width: 200, height: 50).font(.title).italic()
                }).background(Color.teal).clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0).grayscale(slider)
            })
            Text("GrayScale \(slider,specifier: "%.2f")")
            Slider(value: $slider, in: 0...1, step: 0.1).padding(.horizontal, 40).foregroundStyle(.red)
            
            Text("Ferqli Buttonlar").font(.callout).monospaced()
            HStack(spacing: 20.0){
                Button(action: {}, label: {
                    Text("Sign Up").font(Font.custom("Optima", size: 22)).frame(width: 200, height: 50)
                }).background(Capsule().stroke(.cyan, style: StrokeStyle(lineWidth: 5.0, dash: [5, 10]))).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                
                Button(action: {}, label: {
                    Text("Sign Up").font(Font.custom("Optima", size: 22)).frame(width: 200, height: 50)
                }).background(Capsule().stroke(.purple, style: StrokeStyle(lineWidth: 5.0, dash: [5, 10]))).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                
                Button(action: {}, label: {
                    Text("Sign Up").font(Font.custom("Optima", size: 22)).frame(width: 200, height: 50)
                }).background(Capsule().stroke(.indigo, style: StrokeStyle(lineWidth: 5.0, dash: [5, 10]))).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                Button(action: {}, label: {
                    Text("Sign Up").font(Font.custom("Optima", size: 22)).frame(width: 200, height: 50)
                }).background(Capsule().stroke(.teal, style: StrokeStyle(lineWidth: 5.0, dash: [5, 10]))).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
            }
            Text("Blend Mode").font(.callout).monospaced()
            HStack(spacing: 20.0){
                ZStack{
                    Color.cyan.clipShape(Capsule())
                    Color.indigo.clipShape(Capsule()).offset(x: 0.0, y: 10.0).blendMode(.colorBurn)

                    Button(action: {}, label: {
                        Text("Button").frame(maxWidth: .infinity)
                    })
                }.frame(width: 200, height: 50)
                
                ZStack{
                    Color.indigo.clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    Color.cyan.clipShape(Capsule()).offset(x: 0.0, y: 15.0).blendMode(.colorBurn)

                    Button(action: {}, label: {
                        Text("Button").frame(maxWidth: .infinity)
                    })
                }.frame(width: 200, height: 50)
                
                ZStack{
                    Color.purple.clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    Color.purple.clipShape(Capsule()).offset(x: 0.0, y: 20.0).blendMode(.plusDarker)

                    Button(action: {}, label: {
                        Text("Button").frame(maxWidth: .infinity)
                    })
                }.frame(width: 200, height: 50)
                
                ZStack{
                    Color.blue.clipShape(Capsule()).shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
                    Color.yellow.clipShape(Capsule()).offset(x: 0.0, y: 20.0).blendMode(.plusDarker)

                    Button(action: {}, label: {
                        Text("Button").frame(maxWidth: .infinity).offset(x: 10.0, y: 17).foregroundStyle(.white).shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: -20.0, y: -20.0)
                    })
                }.frame(width: 200, height: 50)
                
                
                
            }.font(.title).italic()
            Text("Ferqli Buttonlar").padding(.top, 20)
            HStack(spacing: 120.0){
                ZStack{
                    Color.white.clipShape(Capsule())
                    Color.red.clipShape(Capsule()).offset(x: 100.0, y: 0.0)
                    Button(action: {}, label: {
                        Text("Registration").font(.headline).monospaced().foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .leading, endPoint: .trailing))
                            .offset(x: 50.0, y: 0.0).frame(maxWidth: .infinity).shadow(color: .black, radius: 1, x: 0.0, y: -15.0)
                    })
                }.frame(width: 200, height: 50)
                
                ZStack{
                    Color.red.clipShape(Capsule())
                    Color.white.clipShape(Capsule()).offset(x: 80.0, y: 0.0)
                    Button(action: {}, label: {
                        Text("Registration").font(.headline).monospaced().foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.white, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .offset(x: 50.0, y: 0.0).frame(maxWidth: .infinity)//.shadow(color: .black, radius: 1, x: 0.0, y: -15.0)
                    })
                }.frame(width: 200, height: 50)
            }
            
        }
    }
}

#Preview(windowStyle:.automatic) {
    Button_Test_1()
}
