
import UIKit

enum SFSymbols {
    static let location = "mappin.and.ellipse"
    static let repos = "folder"
    static let gists = "text.alignleft"
    static let followers = "heart"
    static let following = "person.2"
}

enum Images {
    static let ghLogo = UIImage(named: "gh-logo")
}

enum Screensize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(Screensize.width, Screensize.height)
    static let minLength = min(Screensize.width, Screensize.height)
}

enum DeviceTypes {
    static let idiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale = UIScreen.main.nativeScale
    static let scale = UIScreen.main.scale

    static let isiPhoneSE = idiom == .phone && Screensize.maxLength == 568.8
    static let isiPhone8Standard = idiom == .phone && Screensize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed = idiom == .phone && Screensize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard = idiom == .phone && Screensize.maxLength == 736.0
    static let isiPhone8PlusZoomed = idiom == .phone && Screensize.maxLength == 736.0 && nativeScale > scale
    static let isiPhoneX = idiom == .phone && Screensize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr = idiom == .phone && Screensize.maxLength == 896.0
    static let isiPad = idiom == .phone && Screensize.maxLength >= 1024.0

    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
