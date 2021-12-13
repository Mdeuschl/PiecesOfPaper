//
//  UserPreference.swift
//  PiecesOfPaper
//
//  Created by Nakajima on 2021/12/13.
//  Copyright © 2021 Tsuyoshi Nakajima. All rights reserved.
//

import Foundation

struct UserPreference {
    private let iCloudDisabledKey = "iCloud_disabled"
    private let autoSaveDisabledKey = "autosave_disabled"

    var enablediCloud: Bool {
        get {
            !UserDefaults.standard.bool(forKey: iCloudDisabledKey)
        }
        set {
            UserDefaults.standard.set(!newValue, forKey: iCloudDisabledKey)
        }
    }

    var enabledAutoSave: Bool {
        get {
            !UserDefaults.standard.bool(forKey: autoSaveDisabledKey)
        }
        set {
            UserDefaults.standard.set(!enabledAutoSave, forKey: autoSaveDisabledKey)
        }
    }
}
