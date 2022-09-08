//
//  ContentView.swift
//  POC-TelaInsta
//
//  Created by Anna Carolina Costa Andrade on 05/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "family", description: "ieie")
            }
            
            TabBar()
                
            }
            
            }
    }
    


struct Header: View {
    var body: some View {
    HStack {
    Image("logo")
        
        Spacer()
        
        HStack(spacing: 20.0) {
            Image("add")
            Image("heart")
            Image("messenger")
        }
   
    }
    .padding(.horizontal, 15)
    .padding(.vertical, 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Story: View {
    var image: String = "profile"
    var name: String = "Annacca"
    
    var body: some View {
VStack {
    VStack {
        Image(image)
            .resizable()
            .frame(width: 60, height: 60)
            .cornerRadius(50)
    }
    .overlay(
    Circle()
        .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
        .frame(width: 68, height: 68)
    )
    .frame(width: 70, height: 70)
    
    Text(name)
        .font(.caption)
}
    }
}

struct Stories: View {
    var body: some View {

ScrollView(.horizontal, showsIndicators: false) {
    HStack(spacing: 15.0) {
    Story()
    Story(image: "profile2", name: "Fran")
    Story(image: "profile3", name: "Mari")
    Story(image: "profile4", name: "Peppers")
    Story(image: "profile5", name: "GK")
    Story(image: "profile6", name: "Migo Marcus")
    Story(image: "profile7", name: "Milu")
    Story(image: "profile8", name: "Pedrenrique")

    }
    .padding(.horizontal, 8)
}
.padding(.vertical, 10)
}
}

struct PostHeader: View {
    var body: some View {
HStack {
HStack{
    Image("profile")
        .resizable()
        .frame(width: 30, height: 30)
        .cornerRadius(50)
    
    Text("annacca")
        .font(.caption)
        .fontWeight(.bold)
}
    
    Spacer()
    
    Image("more")

}
.padding(.vertical, 10)
.padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image: String = "profile"
    
    
    var body: some View {
VStack{
Image(image)
    .resizable()
    .frame(width: .infinity)
    .aspectRatio(contentMode: .fit)

HStack {
    HStack(spacing: 10.0){
        Image("heart")
        Image("comment")
        Image("share")
    }
    
    Spacer()
    
    Image("bookmark")
}
.padding(.horizontal, 12)
.padding(.vertical, 9)
}
    }
}

struct Post: View {
    var image: String = "profile"
    var description: String = "Sorringo por fazer esta tela pro meu querido grupo"
    
    var body: some View {
VStack(alignment: .leading, spacing: 0.0) {
    PostHeader()
    
    PostContent(image: image)

    Text("Liked by Cacique and others")
        .font(.footnote)
        .frame(width: .infinity)
        .padding(.horizontal, 12)
    
    Text(description)
        .font(.footnote)
        .frame(width: .infinity)
        .padding(.horizontal, 12)
    
    HStack {
        HStack{
            Image("profile")
                .resizable()
                .frame(width: 24, height: 24)
                .cornerRadius(50)
            
            Text("Add comment...")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        
        
        Spacer()
        
        HStack {
            Text("😍")
            Text("😂")
            Image(systemName: "plus.circle")
                .foregroundColor(.secondary)
        }
    }
    .padding(.horizontal, 12)
    .padding(.vertical, 9)
}
    }
}

struct TabBar: View {
    var body: some View {
VStack (spacing: 0.0) {
    Divider()
    
    HStack{
        Image("home")
        Spacer()
        Image("search")
        Spacer()
        Image("reels")
        Spacer()
        Image("shop")
        Spacer()
        Image("profile")
            .resizable()
            .frame(width: 21, height: 21)
            .cornerRadius(50)
        
    }
    .padding(.horizontal, 25)
    .padding(.top, 10)
}
    }
}
