import 'package:bytebank/screens/attendance_list.dart';
import 'package:bytebank/screens/biography.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vereador Policial Federal Suender'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/bg.png'),
            Row(
              children: [
                _FeatureItem(
                  'Atendimentos',
                  Icons.people_alt,
                  onClick: () {
                    _showAttendanceList(context);
                  },
                ),
                _FeatureItem(
                  'Biografia',
                  Icons.description,
                  onClick: () {
                    _showBiography(context);
                  },
                ),
                _FeatureItem(
                  'YouTube',
                  Icons.youtube_searched_for_sharp,
                  onClick: (_launchURL),
                )
                //   _FeatureItem(
                //     'Redes Sociais',
                //     Icons.device_hub,
                //     onClick: () {
                //       _showBiography(context);
                //     },
                //   ),
              ],
            ),
            // Row(
            //   children: [
            //     _FeatureItem(
            //       'Agenda',
            //       Icons.calendar_today,
            //       onClick: () {
            //         _showAttendanceList(context);
            //       },
            //     ),
            //     _FeatureItem(
            //       'Projetos de Lei',
            //       Icons.folder,
            //       onClick: () {
            //         _showBiography(context);
            //       },
            //     ),
            //     _FeatureItem(
            //       'Noticias',
            //       Icons.notifications_none,
            //       onClick: () {
            //         _showBiography(context);
            //       },
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     _FeatureItem(
            //       'Sugestões',
            //       Icons.hearing,
            //       onClick: () {
            //         _showAttendanceList(context);
            //       },
            //     ),
            //     _FeatureItem(
            //       'Informativos',
            //       Icons.warning,
            //       onClick: () {
            //         _showBiography(context);
            //       },
            //     ),
            //     _FeatureItem(
            //       'YouTube2',
            //       Icons.youtube_searched_for_sharp,
            //       onClick: () {
            //         _showBiography(context);
            //       },
            //     ),
            //   ],
            // ),
          ],
        ));
  }
}

void _showAttendanceList(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => AttendaceList(),
    ),
  );
}

void _showBiography(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => Biography(),
    ),
  );
}

_launchURL() async {
  const url =
      'https://www.youtube.com/channel/UCMynXOSaZyQRLFsuqQrtJDw/featured';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  _FeatureItem(this.name, this.icon, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            height: 100,
            width: 110,
            // color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 32,
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
