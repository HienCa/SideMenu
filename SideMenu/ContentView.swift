//
//  ContentView.swift
//  SideMenu
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu: Bool = false
    @State private var selectedTab: Int = 2
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                TabView(selection: $selectedTab,
                        content:  {
                    Text(SideMenuOptionModel.dashboard.title).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(SideMenuOptionModel.dashboard.tag)
                    
                    Text(SideMenuOptionModel.performace.title).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(SideMenuOptionModel.performace.tag)
                    
                    Text(SideMenuOptionModel.profile.title).tabItem { Text("Tab Label 1") }.tag(SideMenuOptionModel.profile.tag)
                    
                    Text(SideMenuOptionModel.search.title).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(SideMenuOptionModel.search.tag)
                    
                    Text(SideMenuOptionModel.notification.title).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(SideMenuOptionModel.notification.tag)
                })
                
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            })
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading, content: {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                })
            })
        })
    }
}

#Preview {
    ContentView()
}
