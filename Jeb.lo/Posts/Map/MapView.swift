import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var post: Post
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: post.locationCoordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.addAnnotation(PostAnnotation(post: post))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(post: postData[0])
    }
}
