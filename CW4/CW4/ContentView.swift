//
//  ContentView.swift
//  CW4
//
//  Created by aalaa alsharhan on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var num = ""
    @State var rests = ["pizza","pasta","risotto","mozzarella sticks","chees balls"]
   // var names = ["pizza","pasta","risotto","mozzarella sticks","chees balls"]
 
    
    var body: some View {
    
        VStack{
            
            List(rests, id: \.self){
                dish in
                
               HStack{
                   Image(dish)
                       .resizable()
                       .scaledToFit()
                       .frame(width: 50, height: 50)
                   Text(dish)
               }//end of hstack
                
                
                
            }//end of list
            
            HStack{
            
                //plus mark
                
                Button(action: {
                   
                    rests.append(num)
                  
                })
                {
                
                   Image(systemName: "plus")
                        .font(.largeTitle)
                   // TextField( "write your choice", text: $num)
                }
                
                
                TextField( "write your choice", text: $num)
                    .multilineTextAlignment(.center)
            
                
                
                
                
                //minus button
                
                Button(action: {
                   
                    rests.removeLast()
                  
                })
                {
                
                   Image(systemName: "minus")
                        .font(.largeTitle)
                   // TextField( "write your choice", text: $num)
                }
                
                
                
                
                //question mark button
                
                Button(action: {
                   
            
                    rests.append(rests.randomElement() ?? "")
                    
                   
                })
                {
                
                   Image("qes")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .font(.largeTitle)
                   // TextField( "write your choice", text: $num)
                }
            
            }//end of hstack
        }//end of vstack
        
            
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
