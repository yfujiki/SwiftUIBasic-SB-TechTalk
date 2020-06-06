//
//  ContentView.swift
//  SwiftUIBasic-SB-TechTalk
//
//  Created by Yuichi Fujiki on 6/7/20.
//  Copyright © 2020 yfuiki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List(0..<50) { i in
                HStack(spacing: 16) {
                    Image(String(format: "%02d", i + 1))
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Cat no. \(i + 1)")
                        Text("\(self.dateFormatter.string(from: Date()))")
                    }
                }
            }
        }
    }

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        return formatter
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
