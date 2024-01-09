import Foundation

public protocol MyConfiguration {
    static var appID: String { get }
}

public enum SecurityClient { }


public func castAndGetAppID() -> String? {
    let castType = (SecurityClient.self as? MyConfiguration.Type)
    let id = castType?.appID
    return id
}
