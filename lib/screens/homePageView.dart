import 'package:flutter/material.dart';
import 'package:my_app/service/infoService.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home Page"),
      ),
      body: FutureBuilder(
        future: InfoService.getNews(),
        builder: (context, AsyncSnapshot snap) {
          if (!snap.hasData) {
            return CircularProgressIndicator.adaptive();
          } else if (snap.hasError) {
            return Text("XATO");
          } else {
            var data = snap.data['data'];
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${data[index]['attributes']['title']}"),
                  onTap: () async {
                  },
                );
              },
              itemCount: data.length,
            );
          }
        },
      ) ,
    );
  }
}