import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 =4.0;
  var num2 =4.0;
  var num3 =4.0;
  var num4 =4.0;
  var num5 =4.0;
  var num6 =4.0;
  var input;
  String _numinput = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.0,-1.0),
                end: Alignment(0.0,1.0),
                colors: [
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorDark,
                ]
            )
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.lock_outline,         // รูปไอคอน
                      size: 50.0,           // ขนาดไอคอน
                      color: Colors.blue,
                      // สีไอคอน
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('LOGIN',style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold)),
                    ),
                    /*if(_num>5)
                          Text('sss'),*/

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // if(numinput.length >0)
                          //Text(numinput,),
                          //  for(var i=0;i<numinput.length;i++)

                          Container(//1
                            width: 20.0,
                            height: 20.0,
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: num1),
                            ),

                          ),
                          Container(//2
                            width: 20.0,
                            height: 20.0,
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: num2),
                            ),

                          ),
                          Container(//3
                            width: 20.0,
                            height: 20.0,
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: num3),
                            ),

                          ),
                          Container(//4
                            width: 20.0,
                            height: 20.0,
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: num4),
                            ),

                          ),
                          Container(//5
                            width: 20.0,
                            height: 20.0,
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: num5),
                            ),

                          ),
                          Container(//6
                            width: 20.0,
                            height: 20.0,
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple, width: num6),
                            ),

                          ),

                        ],
                      ),
                    )


                  ],


                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 1; i <= 3; i++) buildButton(num: i),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 4; i <= 6; i++) buildButton(num: i),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 7; i <= 9; i++) buildButton(num: i),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 75,
                          height: 75,
                        )),

                    buildButton(num: -2),
                    buildButton(num: 0),
                    buildButton(num: -1),

                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          if(num==-1)
            Container(
              width: 75.0,
              height: 75.0,
              child: InkWell(
                  onTap: (){
                    setState(() {
                      _numinput = _numinput.substring(
                          0, _numinput.length - 1);
                      print(_numinput);
                      if(_numinput.length<=0) {
                        num1=4;
                      }
                      if(_numinput.length<=1) {
                        num2=4;
                      }if(_numinput.length<=2) {
                        num3=4;
                      }if(_numinput.length<=3) {
                        num4=4;
                      }if(_numinput.length<=4) {
                        num5=4;
                      }if(_numinput.length<=5) {
                        num6=4;
                      }
                    });
                  },
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.backspace_outlined,
                        color: Colors.blue,
                        // รูปไอคอน
                        size: 40.0,
                      ),
                    ],

                  )


              ),


            ),
          if(num!>=0 && num<=9)
            Container(
              child: InkWell(
                onTap: (){
                  setState(() {
                    _numinput = '$_numinput$num';
                    print(_numinput);
                    input = int.tryParse(_numinput);
                    if(_numinput.length==7) {
                      _numinput = _numinput.substring(
                          0, _numinput.length - 1);
                      num6 = 10;
                    }
                    if(_numinput.length==1) {
                      num1 = 10;

                    }if(_numinput.length==2) {
                      num2 = 10;

                    }if(_numinput.length==3) {
                      num3 = 10;

                    }if(_numinput.length==4) {
                      num4 = 10;

                    }if(_numinput.length==5) {
                      num5 = 10;

                    }
                    if(_numinput.length==6) {
                      num6 = 10;

                    }
                    if(_numinput.length==6 && input != 123456){
                      _numinput = _numinput.substring(0, 0);
                      num1=4.0;
                      num2=4.0;
                      num3=4.0;
                      num4=4.0;
                      num5=4.0;
                      num6=4.0;
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {

                            return AlertDialog(
                              title: Text('Incorrect PIN',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                              content: Text(
                                  'Please try again'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'))
                              ],
                            );
                          });
                    }if(_numinput.length==6 && input == 123456){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const photo()
                        ),
                      );

                    }


                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$num', style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              width: 75.0,
              height: 75.0,
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.purple, width: 4.0),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.purple,
                    offset: new Offset(15.0,10.0),
                    blurRadius: 30.0,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }

}
class photo extends StatefulWidget {
  const photo({Key? key}) : super(key: key);

  @override
  _photoState createState() => _photoState();
}

class _photoState extends State<photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.0,-1.0),
                end: Alignment(0.0,1.0),
                colors: [
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorDark,
                ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                'assets/images/Diamondhead.png',
                width: 500.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}