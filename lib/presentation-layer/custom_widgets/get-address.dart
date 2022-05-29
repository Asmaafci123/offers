import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GetAddress extends StatelessWidget {
  const GetAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
          target: LatLng(27.180134, 31.189283),
          zoom: 16
      ),
    );
  }
}
