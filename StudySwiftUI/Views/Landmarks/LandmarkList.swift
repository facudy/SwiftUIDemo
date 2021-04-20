//
//  LandmarkList.swift
//  StudySwiftUI
//
//  Created by Money Ai on 2021/4/14.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavouritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Favourites Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(
                        destination: LandmarkDetail(landmark: landmark)
                        ) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
