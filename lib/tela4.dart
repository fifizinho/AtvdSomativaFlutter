import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Tela4 extends StatefulWidget {
  const Tela4({super.key});

  @override
  State<Tela4> createState() => _Tela4State();
}

class _Tela4State extends State<Tela4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA TRES'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=84b7d779f4c0453cb76cccfc2988c1a5',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-3.10719, -60.0261),
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_city,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-15.793889, -47.882778),
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_off,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
