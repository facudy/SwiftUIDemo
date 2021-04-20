//
//  CategoryRow.swift
//  StudySwiftUI
//
//  Created by Mangning Ai on 2021/4/20.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        Text(categoryName)
            .font(.headline)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3)))
    }
}
