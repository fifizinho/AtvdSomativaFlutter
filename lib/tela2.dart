import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA UM'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://a.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png',
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
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-9.66625, -35.7351),
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_history,
                        color: Colors.indigo,
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
