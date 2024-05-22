//  Buttons Challenge
//
//  Created by Ben Button
//  Copyright © 2023 MobileMakersEdu. All rights reserved.

import SwiftUI

struct ContentView: View {
    
    @State var changeBackground: Bool = true
    @State var counter: Int = 0
    @State var lightBulbStatus: String = "On"
    @State var showAlert = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            Group {
                Divider()
                Text("Buttons Challenge")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.title)
                Divider()
            }
            
            //MARK: MVP
            HStack{
                Button("1"){
                    print ("Button #1 Was Pressed")
                }.foregroundColor(.black)
                    .font(.largeTitle)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(.red)
                Button("2"){
                    print ("Button #2 Was Pressed")
                }.foregroundColor(.black)
                    .font(.largeTitle)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(.red)
                
            }
            //MARK: Stretch #1
            
            Button("Change Background"){
                changeBackground.toggle()
            }
            .background(changeBackground ? .white : .black)       
            .foregroundColor(.blue)      .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            
            
            
            
            //MARK: Stretch #2
            
            Button(" \(counter)") {
                self.counter += 1
            }.foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(.gray).clipShape(Capsule(), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            
            
            
            
            //MARK: Stretch #3
            Button(action: {showAlert = true}, label: {
                Image(systemName: "key.fill")            }).alert("Stretch #3 Completed",isPresented: $showAlert){Button("OK", role: .cancel){}}
        .font(.system(size: 55))
        .foregroundColor(.green)
        .foregroundStyle(.black)
        .padding()
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
       
                                    
                    
                    //MARK: Stretch #4
            Button(action: {lightBulbStatus = "Off"
            }, label: {
                 Image( systemName:  "lightbulb.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size : 80))
                Text(lightBulbStatus)
                    .foregroundColor(.black)
            })
                    
                    
                    
                    
                    
                    Group {
                        
                        Image("MobileMakersEduNB")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .scaledToFit()
                        
                    }
                    
                    
                }
            
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(changeBackground ? .white : .black)
        
    }
}

