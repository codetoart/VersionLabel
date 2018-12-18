//
//  VersionLabel.swift
//  VersionLabel
//
//  Created by CodeToArt on 18/12/18.
//  Copyright © 2018 codetoart. All rights reserved.
//

import UIKit

private struct Constant {
    static let versionKey = "CFBundleShortVersionString"
    static let buildKey = "CFBundleVersion"
    static let displayNameKey = "CFBundleDisplayName"
    static let bundleNameKey = "CFBundleName"
}

public class VersionLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    public override func didMoveToSuperview() {
        super.didMoveToSuperview()
        text = versionText()
    }
    
    private func versionText() -> String {
        var versionText = ""
        if let appName = Bundle.main.object(forInfoDictionaryKey: Constant.displayNameKey) as? String {
            versionText = appName
        } else if let appName = Bundle.main.object(forInfoDictionaryKey: Constant.bundleNameKey) as? String {
            versionText = appName
        }
        if  let versionNumber = Bundle.main.object(forInfoDictionaryKey: Constant.versionKey) as? String {
            versionText += "\n" + versionNumber
        }
        if let buildNumber = Bundle.main.object(forInfoDictionaryKey: Constant.buildKey) as? String {
            versionText += "." + buildNumber
        }
        
        return versionText
    }
}
