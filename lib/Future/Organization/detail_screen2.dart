import 'package:flutter/material.dart';
import 'package:scproject/Core/widgets/appbar.dart';

class EventDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(
        text: 'Etkinlik Detayı',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://ares.shiftdelete.net/2021/04/turkiye-nin-en-buyuk-flutter-festivali-basliyor.jpg',
              fit: BoxFit.cover,
              height: 200.0,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EVENT NAME',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Flutter Türkiye topluluğu olarak Google ile işbirliği  ile engelli bireyler de kod yazar etkinliği ile beraber buluşuyoruz' +
                        '. Bu etkinlikte engelli bireyler kod yazmayı öğrenecek ve hayatlarının en eğlenceli gününü yaşayacaklardır',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 8.0),
                      Text('11.04.2023'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.people),
                      SizedBox(width: 8.0),
                      Text('25 Katılımcı'),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8.0),
                      Text('Gülten Meriç'),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Implement join event functionality
                    },
                    icon: Icon(Icons.add),
                    label: Text("Katıl"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(48, 48),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32.0),
                          bottomRight: Radius.circular(32.0),
                        ),
                      ),
                      primary: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
