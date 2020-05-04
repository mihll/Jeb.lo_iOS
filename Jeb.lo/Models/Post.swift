import SwiftUI
import CoreLocation

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var place: String
    var status: String
    var stop: String
    var line: String
    var addedDate: String
    var addedUser: String
    var description: String
    var upvotes: Int
    var downvotes: Int
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

extension Post {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
