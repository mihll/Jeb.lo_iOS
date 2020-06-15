import SwiftUI
import CoreLocation

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var postedDate: String
    var statusPost: String
    var authorUsername: String
    var linesBlocked: [String]
    var likes: Int
    var dislikes: Int
    var urlPhotos: [String]
    var numberOfComments: Int
    var latitude: Double
    var longitude: Double
}

extension Post {
    var image: Image {
        ImageStore.shared.image(name: "jeb1")
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
