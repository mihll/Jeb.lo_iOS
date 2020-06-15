import Foundation
import MapKit

final class PostAnnotation: NSObject, MKAnnotation {
    let id: Int
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(post: Post) {
        self.id = post.id
        self.title = post.title
        self.coordinate = post.locationCoordinate
    }
}
