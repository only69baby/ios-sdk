//
//  UrlOpener.swift
//  Qualaroo
//
//  Copyright (c) 2018, Qualaroo, Inc. All Rights Reserved.
//
//  Please refer to the LICENSE.md file for the terms and conditions
//  under which redistribution and use of this file is permitted.
//

import UIKit

class UrlOpener {
  func openUrl(_ url: URL) {
    UIApplication.shared.openURL(url)
  }
}
