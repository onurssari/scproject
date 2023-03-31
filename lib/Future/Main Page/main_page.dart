import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:scproject/Future/Organization/detail_screen2.dart';
import '../../Core/widgets/appbar.dart';
import '../../Core/widgets/bottombar.dart';
import '../../Core/widgets/drawer.dart';

class EventDetails {
  final String name;
  final String date;
  final String organizer;
  final String imageUrl;

  EventDetails(this.name, this.date, this.organizer, this.imageUrl);
}

class mapsPage extends StatefulWidget {
  mapsPage({Key? key}) : super(key: key);

  @override
  State<mapsPage> createState() => _mapsPageState();
}

class _mapsPageState extends State<mapsPage> {
  late GoogleMapController _mapController;
  final Set<Marker> _markers = Set();

  EventDetails _eventDetails = EventDetails(
      "Flutter Etkinliği",
      "1 Nisan 2023",
      "Flutter Topluluğu",
      "https://ares.shiftdelete.net/2021/04/turkiye-nin-en-buyuk-flutter-festivali-basliyor.jpg");

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    double opactity = 1;

    return MaterialApp(
        theme: ThemeData(
          primaryColor: const Color(0xFF219F94),
          accentColor: const Color(0xFFF2F5C8),
        ),
        home: Scaffold(
          appBar: const myAppbar(text: 'Etkinlikler'),
          drawer: const MyDrawer(),
          bottomNavigationBar: const Bottombar(
            indexmenu: 2,
          ),
          body: GoogleMap(
            onMapCreated: (controller) {
              _mapController = controller;
              setState(() {
                _markers.add(
                  Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(41.015137, 28.979530),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 350,
                            child: Column(
                              children: [
                                Image.network(
                                  _eventDetails.imageUrl,
                                  width: 200,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    _eventDetails.name,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Tarih: ${_eventDetails.date}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Organizatör: ${_eventDetails.organizer}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return EventDetailsPage();
                                        }));
                                      },
                                      child: Text(
                                        "Detaylar",
                                        style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 0.5,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Color(0xFF2697FF),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 14.0, horizontal: 80),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12.0)))),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                );
              });
            },
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(41.015137, 28.979530),
              zoom: 15,
            ),
          ),
        ));
  }
}
