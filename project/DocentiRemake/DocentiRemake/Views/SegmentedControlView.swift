//
//  SegmentedControlView.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 24/11/22.
//

import SwiftUI

struct SegmentedControlView: View {
    @State private var selecteCase : caseSegmented = .didactics
    var body: some View {
        VStack{
            Picker("", selection: $selecteCase){
                ForEach(caseSegmented.allCases , id: \.self){
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            Selected(selectedCase: selecteCase)
        }
    }
}

enum caseSegmented : String, CaseIterable {
    case didactics = "Didactics"
    
    case board = "Board"
}

struct Selected : View {
    var selectedCase : caseSegmented
    var body: some View {
        switch selectedCase{
        case .didactics : DidacticsView()
        case .board : BoardView()
        }
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView()
    }
}
