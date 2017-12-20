//
//  UIDevice+KuzDevLib.swift
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 19.12.2017.
//  Copyright © 2017 kuz-dev.ru. All rights reserved.
//

import Foundation
import UIKit

extension UIDevice {
    
    @nonobjc public static var isSimulator: Bool {
        return ProcessInfo.processInfo.environment["SIMULATOR_DEVICE_NAME"] != nil
    }
    
    public static var isIphone5: Bool{
        return UIScreen.main.bounds.size.width == 320
    }
    
    public static var isIphonePlus: Bool{
        return UIScreen.main.bounds.size.width == 414
    }
}
