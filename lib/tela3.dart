import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA DOIS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png?apikey=84b7d779f4c0453cb76cccfc2988c1a5',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(37.7749, -122.4194),
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_city_outlined,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-9.66625, -35.7351),
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_pin,
                        color: Colors.deepPurple,
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
