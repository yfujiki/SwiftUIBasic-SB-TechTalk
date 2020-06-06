//
//  ContentView.swift
//  SwiftUIBasic-SB-TechTalk
//
//  Created by Yuichi Fujiki on 6/7/20.
//  Copyright © 2020 yfuiki. All rights reserved.
//

import SwiftUI

struct NextView: View {
    var catNo: Int

    var body: some View {
        VStack {
            Text("Cat no. \(catNo)")
            GeometryReader { geometry in
                Image(String(format: "%02d", self.catNo))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {

        NavigationView {
            List(0..<50) { i in
                NavigationLink(destination: NextView(catNo: i + 1)) {
                    HStack(spacing: 16) {
                        Image(String(format: "%02d", i + 1))
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Cat no. \(i + 1)")
                            Text("\(self.dateFormatter.string(from: Date()))")
                        }
                    }
                }
            }.navigationBarTitle("List of my cats")
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
