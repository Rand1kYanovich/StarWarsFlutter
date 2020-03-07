import 'package:firstflutterapp/api_service.dart';
import 'package:firstflutterapp/entity/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllCards extends StatefulWidget {
  @override
  _AllCardsState createState() => _AllCardsState();
}

class _AllCardsState extends State<AllCards> {
  List<PeopleDto> cards = List();
  int page = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadCards();
  }

  void _loadCards() async {
    setState(() {
      isLoading = true;
    });

    final results = await getAllCard(page);

    setState(() {
      cards.addAll(results);
      isLoading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (!isLoading && scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent) {
                  setState(() {
                    page++;
                    _loadCards();
                  });
                }
                return true;
              },
              child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${cards[index].name}'),
                  );
                },
              ),
            ),
          ),
          Container(
            height: isLoading ? 50.00 : 0,
            color: Colors.transparent,
            child: Center(
              child: new CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
