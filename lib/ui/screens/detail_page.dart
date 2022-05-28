import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../repositories/data_repository.dart';


import '../../shared/constants.dart';
import '../widgets/movie_card.dart';
//import '../widgets/custum_app_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataRepository>(context);


    return Scaffold(
      backgroundColor: ksiBackgroundColor,
      appBar: AppBar(
        backgroundColor: ksiBackgroundColor,
      leading:IconButton(
      icon: const Icon(Icons.arrow_back_ios_outlined,),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    ),

      body: ListView(
       children:[
       Container(
        child: dataProvider.popularMovieList.isEmpty
            ?const Center(child: Text("Indisponibilité du film"),):
        MovieCard(movie: dataProvider.popularMovieList[0])

       ),

      const SizedBox(height: 15,),
         Text("Morbius",
           style: GoogleFonts.poppins(
             color: Colors.white,
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
           ),),
         const SizedBox(height:5,),
         Text("Genres : Action, Science-Fiction, Fantastique",
           style: GoogleFonts.poppins(
             color: Colors.grey,
             fontSize: 10.0,
             fontWeight: FontWeight.bold,
           ),),
         const SizedBox(height:5,),

       ]
    )
    );

  }
}
