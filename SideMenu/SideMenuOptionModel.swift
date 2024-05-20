//
//  SideMenuOptionModel.swift
//  SideMenu
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import Foundation
enum SideMenuOptionModel: Int, CaseIterable{
    case dashboard
    case performace
    case profile
    case search
    case notification
    
    var title: String{
        switch self{
        case .dashboard:
            return "Dashboard"
        case .performace:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notification:
            return "Notification"
        }
    }
    
    var tag: Int{
        switch self{
        case .dashboard:
            return 0
        case .performace:
            return 1
        case .profile:
            return 2
        case .search:
            return 3
        case .notification:
            return 4
        }
    }
    
    var systemImageName: String{
        switch self{
        case .dashboard:
            return "filemenu.and.cursorarrow"
        case .performace:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notification:
            return "bell"
        }
    }
}

extension SideMenuOptionModel: Identifiable{
    var id: Int{return self.rawValue}
}
