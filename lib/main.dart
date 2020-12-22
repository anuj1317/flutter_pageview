import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Places(),
  )
);

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {

  PageController _pageController;
  int totalpages = 4;
  void _onScroll()
  {

  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children:<Widget> [
          makePages(image:'assets/iron_man_.jpg',
          page: 1,
          title: 'Iron Man',
          description: 'When billionaire industrialist Tony Stark dons his sophisticated steel-mesh armor, he becomes a living high-tech weapon - the world greatest fighting machine. Tony has primed his ultra modern creation for waging state of the art campaigns, attaining sonic flight, and defending the greater good! He is the Armored Avenger - driven by a heart that is part machine, but all hero! He is the INVINCIBLE IRON MAN!',
          ),
          makePages(image: 'assets/thor.jpg',
            page: 2,
            title: 'Thor',
            description: 'Nordic legend tells the tale of the son of Odin, the heir to the throne of Asgard - he is THOR, renowned as the mightiest hero of mythology! Thor strength, endurance, and quest for battle are far greater than his Asgardian brethren. The mighty Thor wields an enchanted Uru hammer, Mjolnir, and is master of thunder and lightning.',
          ),
          makePages(image: 'assets/Captain-america.jpg',
            page: 3,
            title: 'Captain America',
            description: 'During WWII, the patriotic Steve Rogers was offered a place in the '
                'military top operation: Rebirth. Injected with an experimental super-serum, '
                'Rogers emerged from the treatment with heightened endurance, strength, and'
                ' reaction time. With extensive training and an indestructible Vibranium shield,'
                ' Rogers soon became the country ultimate weapon: CAPTAIN AMERICA!',
          ),
          makePages(image: 'assets/blackpanther.jpg',
            page: 4,
            title: 'Black Panther',
            description: 'Monarch of the secluded but technologically advanced African nation of Wakanda, '
                'King TChalla is the Black Panther; a sacred title that must be both inherited & '
                'earned by the current Wakandan ruler. Granted superhuman powers by ceremonially'
                ' consuming a mystical heart-shaped herb, the Black Panther is responsible for '
                'defending his people, and the world, from any threats.',
          )

        ],
      ),

    );
  }

  Widget makePages({image,title,description,page})
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(0.3),
            ]

          )
        ),
       child: Padding(
         padding: EdgeInsets.all(20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children:<Widget> [
             SizedBox(
               height: 40,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.baseline,
               textBaseline: TextBaseline.alphabetic,
               children:<Widget>[
                 Text(page.toString(),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                 Text('/'+ totalpages.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
               ],
             ),
             Expanded(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:<Widget> [
                   Text(title,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children:<Widget> [
                       Container(
                         margin:EdgeInsets.only(right: 3),
                         child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                       ),
                       Container(
                         margin:EdgeInsets.only(right: 3),
                         child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                       ),
                       Container(
                         margin:EdgeInsets.only(right: 3),
                         child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                       ),
                       Container(
                         margin:EdgeInsets.only(right: 3),
                         child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                       ),
                       Container(
                         margin:EdgeInsets.only(right: 3),
                         child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                       ),
                       Text('5.0',style: TextStyle(color: Colors.white70),),
                       Text('(2300)',style: TextStyle(color: Colors.white38,fontSize: 12),),
                     ],
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Padding(
                     padding: EdgeInsets.only(right: 50),
                       child: Text(description,style: TextStyle(color: Colors.white.withOpacity(.9,),height: 1.9,fontSize: 15),)),
                   SizedBox(
                     height: 10,
                   ),


                 ],
               ),
             )
             
           ],
         ),
       ),
      ),
    );
  }

}
