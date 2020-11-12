import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praise/ScrumCard.dart';

class MyHomePage extends StatefulWidget {


  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var fibonacci =[0,1,2,3,5,8,13,20,40,100];
  var isHomePage =true;
  var singleCardText="";
  var singleCardIcon;

  switchToCard(text,icon){

    setState((){
      isHomePage=false;
      singleCardText=text;
      singleCardIcon=icon;

    });
  }

  @override
  Widget build(BuildContext context) {

    var fibonacci =["ٱلْرَّحْمَـانُ","ٱلْرَّحِيْمُ","ٱلْمَلِكُ","ٱلْقُدُّوسُ","ٱلْسَّلَامُ","ٱلْمُؤْمِنُُ","ٱلْمُهَيْمِنُ","ٱلْعَزِيزُ",
                    "ٱلْجَبَّارُ","ٱلْمُتَكَبِّرُ","ٱلْخَالِقُ","ٱلْبَارِئُ","ٱلْمُصَوِّرُ","ٱلْغَفَّارُ","	ٱلْقَهَّارُ",
                    "ٱلْوَهَّابُ","	ٱلْرَّزَّاقُ","ٱلْفَتَّاحُ","ٱلْعَلِيمُ","ٱلْقَابِضُ","ٱلْبَاسِطُ","ٱلْخَافِضُ",
                    "ٱلْرَّافِعُ","ٱلْمُعِزُّ","ٱلْمُذِلُّ","ٱلْسَّمِيعُ","ٱلْبَصِيرُ",	"ٱلْحَكَمُ","ٱلْعَدْلُ","ٱلْلَّطِيفُ",
                    "ٱلْخَبِيرُ","ٱلْحَلِيمُ","ٱلْعَظِيمُ","ٱلْغَفُورُ","ٱلْشَّكُورُ","ٱلْعَلِيُّ","ٱلْكَبِيرُ",
                    "ٱلْحَفِيظُ","ٱلْمُقِيتُ","ٱلْحَسِيبُ","ٱلْجَلِيلُ","ٱلْكَرِيمُ",	"ٱلْرَّقِيبُ","ٱلْمُجِيبُ","ٱلْوَاسِعُ",
                    "ٱلْحَكِيمُ","ٱلْوَدُودُ","ٱلْمَجِيدُ","ٱلْبَاعِثُ","ٱلْشَّهِيدُ","ٱلْحَقُّ",	"ٱلْوَكِيلُ","ٱلْقَوِيُّ",
                    "ٱلْمَتِينُ","ٱلْوَلِيُّ","ٱلْحَمِيدُ","ٱلْمُحْصِيُ","ٱلْمُبْدِئُ","ٱلْمُعِيدُ","ٱلْمُحْيِى",
                    "ٱلْمُمِيتُ","ٱلْحَىُّ","ٱلْقَيُّومُ","ٱلْوَاجِدُ","ٱلْمَاجِدُ","ٱلْوَاحِدُ","ٱلْأَحَد","ٱلْصَّمَدُ","ٱلْقَادِرُ",
                    "ٱلْمُقْتَدِرُ","ٱلْمُقَدِّمُ","ٱلْمُؤَخِّرُ","ٱلأَوَّلُ","	ٱلْآخِرُ","ٱلْظَّاهِرُ","ٱلْبَاطِنُ","ٱلْوَالِي",
                    "ٱلْمُتَعَالِي","ٱلْبَرُّ","ٱلْتَّوَّابُ","ٱلْمُنْتَقِمُ","ٱلْعَفُوُّ","ٱلْرَّؤُفُ","مَالِكُ ٱلْمُلْكُ","ذُو ٱلْجَلَالِ وَٱلْإِكْرَامُ",
                    "ٱلْمُقْسِطُ","ٱلْجَامِعُ","	ٱلْغَنيُّ","ٱلْمُغْنِيُّ","ٱلْمَانِعُ","ٱلْضَّارُ","ٱلْنَّافِعُ","ٱلْنُّورُ",	"ٱلْهَادِي","ٱلْبَدِيعُ",
                    "ٱلْبَاقِي","ٱلْوَارِثُ","ٱلْرَّشِيدُ","ٱلْصَّبُورُ"];

    return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),

       ),
      body:Container(
        color: Colors.deepPurple,
        child: AnimatedSwitcher(
          child: isHomePage
                ?  GridView.count(crossAxisCount: 3,
              children: <Widget>[

                for(var i in fibonacci)
                  ScrumCard(
                    text:i.toString(),
                    notifyParent: switchToCard,
                  ),


              ],
              crossAxisSpacing: 20.0,
              padding: EdgeInsets.all(10.0))
              :Padding(
              padding: EdgeInsets.all(10.0),
              child:ScrumCard(
                text: singleCardText,
                icon: singleCardIcon,
                notifyParent: (text,icon){
                  setState(() {
                    singleCardIcon =null;
                    singleCardText="";
                    isHomePage = true;
                  });
                },
              ),
          ),
          duration: Duration(milliseconds: 300),
        ),
      )





    );


  }

}
