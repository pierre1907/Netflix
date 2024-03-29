import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/movies.dart';



class MovieInfo extends StatelessWidget {
  final Movie newMovie;
  const MovieInfo({Key? key, required this.newMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          newMovie!.name,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Genre :${newMovie!.reformatGenrens()}",
          style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w500),
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                newMovie!.releaseDate!.substring(0, 4),
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Recommande à ${(newMovie!.vote! * 10).toInt()}%",
              style: GoogleFonts.poppins(
                  color: Colors.green,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
