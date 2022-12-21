//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Eraser on 12/20/22.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(22)
                
            Text(video.title)
                .font(.title3)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 100){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                Text("Watch")
                    .bold()
                    .font(.callout)
                    .frame(width: 280, height: 50)
                    .background(Color(.blue))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
