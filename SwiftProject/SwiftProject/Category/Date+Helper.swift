//
//  NSDate+Helper.swift
//  SwiftProject
//
//  Created by zkl on 2020/5/21.
//  Copyright © 2020 zkl. All rights reserved.
//

import Foundation
import UIKit

enum KLDateFormatType:String {
    case YYYY = "yyyy"
    case MM = "MM"
    case DD = "dd"
    case YYYYMMDD = "yyyy-MM-dd"
    case YYYYMMDDHHmmss = "yyyy-MM-dd HH:mm:ss"
    case HHmmss = "HH:mm:ss"
    case HHmm = "HH:mm"
}
extension Date{
    //    获取时区
   static func createDateFormatter(_ dateType:KLDateFormatType) -> DateFormatter {
        let dateFormatter = DateFormatter.init()
            //设置简体中文
            dateFormatter.locale = Locale.init(identifier: "zh_CN")
            //获取系统时区
            dateFormatter.timeZone = TimeZone.current
//            //北京东八区时间
//            dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 3600*8)
            dateFormatter.dateFormat = dateType.rawValue;
        return dateFormatter;
    }
    //MARK: 获取当前时间
    static func KLGetCurrentTime(_ formatType:KLDateFormatType) -> String {
        let dateFormatter = createDateFormatter(KLDateFormatType(rawValue: formatType.rawValue)!)
        return dateFormatter.string(from:Date.init())
    }
    //MARK: 时间戳转DateString
    static func DateStringForTimeStamp(_ time:Int,_ formatType:KLDateFormatType)->String{
        let dateFormatter = createDateFormatter(KLDateFormatType(rawValue:formatType.rawValue)!)
        let date = Date.init(timeIntervalSince1970: TimeInterval(time/1000))
        return dateFormatter.string(from: date)
    }
    //MARK:时间string转date
    static func dateTimeForDateString(_ timeStr:String,_ formatType:KLDateFormatType)->Date{
        let dateFormatter = createDateFormatter(KLDateFormatType(rawValue:formatType.rawValue)!)
        return dateFormatter.date(from: timeStr) ?? Date.init(timeIntervalSince1970: 0)
    }
    
}
