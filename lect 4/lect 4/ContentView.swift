//
//  ContentView.swift
//  lect 4
//
//  Created by عايشة on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counter = [0, 0, 0]
    var body: some View {
        VStack {
            ThekerButton(counter: $counter[0], label: "استغفرالله")
            ThekerButton(counter: $counter[1], label: "سبحان الله")
            ThekerButton(counter: $counter[2],  label: "سبحان الله")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ThekerButton: View {
    @Binding var counter: Int
    let label: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.largeTitle)
            Button(action: {
                counter += 1
            }, label: {
                Text("\(counter)")
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .padding()

            }
            )
        }
        
    }
}
