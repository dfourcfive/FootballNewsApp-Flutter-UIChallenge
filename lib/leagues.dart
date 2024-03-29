import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Leagues extends StatefulWidget {
  @override
  _LeaguesState createState() => _LeaguesState();
}

TextStyle content = TextStyle(fontSize: 14);
TextStyle _textStyletitle = TextStyle(fontSize: 18);

class _LeaguesState extends State<Leagues> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  bool isSwitched = false;
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
              title: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
                Text(
                  "الدوريات".tr,
                  style: _textStyletitle,
                )
              ],
            ),
          )),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 53,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.grey[600],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  obscureText: false,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  decoration: InputDecoration.collapsed(
                                    hintText: "ابحث عن الدوري".tr,
                                    hintStyle: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                /* new ListView.builder(
                   physics: ClampingScrollPhysics(),
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                  itemCount: listOfTiles.length,
                  itemBuilder: (BuildContext context , int index){
                    return new StuffInTiles(listOfTiles[index]);
                  },
                ),

                 */

                ExpansionTile(
                  title: Text(
                    "المفضلة".tr,
                    style: content,
                  ),
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                child: Image.asset("assets/12.jpg"),
                              ),
                              Text("الدوري الاسباني".tr)
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    "مقترح".tr,
                    style: content,
                  ),
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                child: Image.asset("assets/12.jpg"),
                              ),
                              Text("الدوري الاسباني".tr)
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "بقية العالم".tr,
                        style: content,
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listOfTiles.length,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return StuffInTiles(listOfTiles[index]);
                    })
              ],
            ),
          )),
    );
  }
}

class MyTile {
  String title;
  String img;
  List<MyTile> childern;
  MyTile(this.title, this.img, [this.childern = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile('egypte', '', <MyTile>[
    new MyTile("aa", "assets/12.jpg"),
    new MyTile("aab", "assets/12.jpg")
  ]),
  new MyTile('inter', '', <MyTile>[
    new MyTile("ber", "assets/12.jpg"),
    new MyTile("rm", "assets/12.jpg")
  ]),
  new MyTile('الجزائر', '', <MyTile>[
    new MyTile('الدوري الممتاز', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
  new MyTile('استراليا', '', <MyTile>[
    new MyTile('الدوري الممتاز', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
  new MyTile('الارجنتين', '', <MyTile>[
    new MyTile('الدوري الدرجه الاولي', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
  new MyTile('السعودية', '', <MyTile>[
    new MyTile('الدوري الدرجه الاولي', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
  new MyTile('اسبانيا', '', <MyTile>[
    new MyTile("الدوري الدرجه الاولي", "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
  new MyTile('استراليا', '', <MyTile>[
    new MyTile('الدوري الدرجه الاولي', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
  new MyTile('أستونيا', '', <MyTile>[
    new MyTile('الدوري الدرجه الاولي', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg"),
    new MyTile('الدرجه التانيه', "assets/12.jpg")
  ]),
];

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.childern.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(right: 45),
        child: new ListTile(
          title: Text(
            t.title.toString().tr,
            style: content,
          ),
          leading: Container(height: 35, width: 35, child: Image.asset(t.img)),
          trailing: IconButton(icon: Icon(Icons.star_border), onPressed: null),
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        print("Hello Gys");
      },
      child: new ExpansionTile(
        initiallyExpanded: false,
        key: new PageStorageKey<MyTile>(t),
        title: new Text(
          t.title.toString().tr,
          style: content,
        ),
        leading: Container(
            height: 35, width: 35, child: Image.asset("assets/12.jpg")),
        children: t.childern.map(_buildTiles).toList(),
      ),
    );
  }
}
