//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Bunyod Rafikov on 25.02.2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 55, total: 100)
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello World!")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Hello")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }.accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
            Spacer()
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
            }.accessibilityLabel("Next speaker")
        }.padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
