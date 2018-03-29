//
//  SwitchcraftManager.swift
//  Pods-Switchcraft_Example
//
//  Created by Brendan Lensink on 2018-03-29.
//

import Foundation

public class SwitchcraftManager {

    private let defaults = UserDefaults.standard

    public static let shared = SwitchcraftManager()

    public var defaultsKey = "switchcraftEndpoint"

    public var endpoint: String? {
        get {
            return UserDefaults.standard.string(forKey: defaultsKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: defaultsKey)
        }
    }
}
