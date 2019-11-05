import 'package:flutter/material.dart';
import 'package:happ/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  static String tag = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Locale getSelectedLocale(String value) => MyApp.list.firstWhere((locale) => locale.languageCode == value);


  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    final lang = AppLocalizations.of(context);
    return Scaffold(


      backgroundColor: Color.fromRGBO(245, 246, 252,1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          //padding: EdgeInsets.only(top: 60,left: 30),
          child: Column(
            children: <Widget>[
              Container(

                margin: EdgeInsets.only(top: 60,left: 30),

                // greeting and Time
                child: Row(

                  children: <Widget>[

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Good evening!",
                          style: TextStyle(
                              fontSize: 24
                          ),
                        ),
                        SizedBox(height: 9,),
                        Text("Sudhakar Dharmaraju",
                          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                    Expanded(child: Container()),

                    Padding(padding: EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(DateFormat("hh:mm").format(DateTime.now()),
                            style: TextStyle(
                                color: Color.fromRGBO(26, 141, 255,1),
                                fontSize: 24
                            ),
                          ),
                          Text(DateFormat("a").format(DateTime.now()),
                              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                                  fontSize: 9)
                          ),
                          SizedBox(height: 9,),
                        ],
                      ),
                    )

                  ],
                ),
              ),

              //box



              Container(
                height: 216,

                margin: EdgeInsets.only(right: 20.0,top: 20.0,left: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    //border: Border.all(color: Colors.black),
                    boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                    color: Colors.white
                ),
                //foregroundDecoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                child: Stack(

                  children: <Widget>[
                    Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("Evening Mode ON",
                            style: TextStyle(
                                color: Color.fromRGBO(0,0,0,1),
                                fontSize: 16
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //1
                              Container(
                                height: 58,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text("6",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black
                                      ),
                                    ),
                                    Spacer(),
                                    Text("Garden lights",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(0,0,0,.5)
                                      ),
                                    ),
                                    Spacer(),
                                    Text("03:30:33",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color.fromRGBO(40, 175, 111,1)
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              //2
                              Container(
                                height: 58,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text("4",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black
                                      ),
                                    ),
                                    Spacer(),
                                    Text("Cordial light",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(0,0,0,.5)
                                      ),
                                    ),
                                    Spacer(),
                                    Text("03:30:33",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color.fromRGBO(40, 175, 111,1)
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              //3
                              Container(
                                height: 58,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text("2",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black
                                      ),
                                    ),
                                    Spacer(),
                                    Text("Hall Lights",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(0,0,0,.5)
                                      ),
                                    ),
                                    Spacer(),
                                    Text("02:30:33",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color.fromRGBO(40, 175, 111,1)
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Text(
                              "All lights will switch of automatically as per the timer which is there in the setting.",
                              softWrap: true,
                              style: TextStyle(
                                color: Color.fromRGBO(0,0,0,.5),
                                fontSize: 10,

                              ),
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.only(left: 28,right: 28),

                    ),

                    Center(
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset("assets/images/Intersection.png")
                        ],
                      ),
                    )
                  ],
                ),

              ),

              // Running Appliances

              Container(
                padding: EdgeInsets.only(top: 25,right: 30.0,left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Running Appliances",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text("See All",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 141, 255,1),
                            fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //running appliances list view

              Container(
                // width: 300,
                  height: 153,
                  margin: EdgeInsets.only(top: 25),

                  child: ListView(

                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[

                      //Air conditioner
                      Container(
                          height: 153,
                          width: 135,
                          margin: EdgeInsets.only(right: 20,left: 30),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),

                              boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                              color: Colors.white
                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Image.asset("assets/images/airconditioner.png"),
                                  ),

                                  Text("Air Conditioner",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black
                                    ),
                                  ),
                                  Text("On for last 3 Hrs",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color.fromRGBO(0,0,0,.5)
                                    ),
                                  ),

                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Image.asset("assets/images/power.png"),
                                  )
                                ],
                              ),
                              Positioned(
                                left: 97,
                                top: 5,
                                child: Container(
                                  height: 8,
                                  width: 8,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(26, 162, 63,1),
                                  ),
                                ),
                              )
                            ],
                          )
                      ),

                      //smart Light
                      Container(
                          height: 153,
                          width: 135,
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),

                              boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                              color: Colors.white
                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Image.asset("assets/images/lightbulbon.png"),
                                  ),

                                  Text("Smart Light",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black
                                    ),
                                  ),
                                  Text("On for last 5 Hrs",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color.fromRGBO(0,0,0,.5)
                                    ),
                                  ),

                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Image.asset("assets/images/power.png"),
                                  )
                                ],
                              ),
                              Positioned(
                                left: 97,
                                top: 5,
                                child: Container(
                                  height: 8,
                                  width: 8,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(26, 162, 63,1),
                                  ),
                                ),
                              )
                            ],
                          )
                      ),

                      //Refrigerator
                      Container(
                          height: 153,
                          width: 135,
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),

                              boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                              color: Colors.white
                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Image.asset("assets/images/kitchen.png"),
                                  ),

                                  Text("Refrigerator",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black
                                    ),
                                  ),
                                  Text("On for last 2 Days",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color.fromRGBO(0,0,0,.5)
                                    ),
                                  ),

                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Image.asset("assets/images/power.png"),
                                  )
                                ],
                              ),
                              Positioned(
                                left: 97,
                                top: 5,
                                child: Container(
                                  height: 8,
                                  width: 8,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(26, 162, 63,1),
                                  ),
                                ),
                              )
                            ],
                          )
                      )

                    ],
                  )
              ),

              //bill section

              Container(

                height: 186,


                margin: EdgeInsets.only(right: 20.0,top: 20.0,left: 30,bottom: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    //border: Border.all(color: Colors.black),
                    boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                    color: Colors.white
                ),

                padding: EdgeInsets.only(left: 40,right: 40),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[

                        Container(
                          child: Row(
                            children: <Widget>[
                              Image.asset("assets/images/meter.png"),
                              Column(

                                children: <Widget>[
                                  Text("January 19 Bill",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(0,0,0,1)
                                    ),
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text("Due Date ",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color.fromRGBO(0,0,0,.5)
                                        ),
                                      ),
                                      Text("6 Days ",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color.fromRGBO(40, 175, 111,1)
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        Column(
                          children: <Widget>[
                            Text("467",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromRGBO(0,0,0,1)
                              ),
                            ),
                            Text("Units",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(0,0,0,.5)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          child: Row(
                            children: <Widget>[
                              Image.asset("assets/images/bill.png"),
                              Text(" Bill Amount",
                                style: TextStyle(fontSize: 12,
                                  color: Color.fromRGBO(0,0,0,.5)
                                ),
                              )
                            ],
                          ),
                        ),

                        Text("\$ 4,654.27",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(0,0,0,1)
                          ),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        InkWell(
                          onTap: (){},
                          child: Text("View Breakdown",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(26, 141, 255,1)
                            ),
                          ),
                        ),

                        RaisedButton(
                          onPressed: (){},
                          color: Color.fromRGBO(26, 141, 255,1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

                          child: Text("Pay Bill",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255,1)
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              )


            ],
          ),
        ),
      )
    );
  }
}
