import 'package:assist_han_app/model/temp.dart';
import 'package:assist_han_app/services/get_pihole_temp_service.dart';
import 'package:assist_han_app/widget/component/appbar.dart';
import 'package:assist_han_app/widget/component/navbar.dart';
import 'package:flutter/material.dart';

class AssistStart extends StatelessWidget {
  const AssistStart({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "Welcome";    

    return MaterialApp(
//      theme: TheCrewTheme.standardTheme,
      home: _StatefullStartPage(title: title,),
    );
  }
}

class _StatefullStartPage extends StatefulWidget {
  final String title;

  const _StatefullStartPage({
    Key? key, required this.title
  }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<_StatefullStartPage> {
  final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

//  late DatabaseHandler handler;

//  final _formKeyCrew = GlobalKey<FormState>();

  Temp? temp;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
//    this.handler = DatabaseHandler();
//    this.handler.initializeDB().whenComplete(() {
      setState(() {});
//    });
    // fetch data from API

  }

  getTemp() async {
    temp = await GetPiholeTemp().getTemp();
    if (temp != null) {
      setState(() {
        isLoaded = true;
      });      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          assistHanAppBar('AssistHan', context),
//          _futureCrewBuilder(context),
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          _buildAddCrewBtn(context);
//        },
//        child: const Icon(Icons.add),
//      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          homeMenuItem(),
          helpMenuItem(),
        ],
        onTap: (index) {
          switch(index) {
            case 0:
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const AssistStart(),
                )
              );
              break;
            case 1:
//              print("Get help!");
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}