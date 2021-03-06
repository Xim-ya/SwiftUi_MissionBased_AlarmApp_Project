//
//  DifficultyRangeIndicator.swift
//  Alarm
//
//  Created by ์ดํด์ฃผ on 2022/01/08.
//

import SwiftUI

struct DifficultyRangeIndicator: View {
    var selectedLevel: Double
    private(set) var levelIndicater: [Level] = [
        Level(emoji: "๐", title: "๋งค์ฐ ์ฌ์"),
        Level(emoji: "๐", title: "์ฌ์"),
        Level(emoji: "๐", title: "๋ณดํต"),
        Level(emoji: "๐ค", title: "์ด๋ ค์"),
        Level(emoji: "๐คฏ", title: "๋งค์ฐ ์ด๋ ค์"),
    ]
    

    var body: some View {
        HStack {
            Text(levelIndicater[Int(selectedLevel)].emoji)
            Text(levelIndicater[Int(selectedLevel)].title)
        }
        .padding(.bottom, 1)
        .responsiveTextify(16, .bold)
    }
    
    struct Level {
       let emoji: String
       let title: String
    }
}

