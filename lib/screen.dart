import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/home_screen.dart';

class WelcomeScrreen extends StatelessWidget {
@override
Widget build(BuildContext context){
  return Material(
    child: Container(
      padding: EdgeInsets.only(top: 100, bottom: 40),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.cover,
          opacity: 0.6,
         )),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Photo collection" ,style: GoogleFonts.pacifico(
              fontSize: 30,
              color: Colors.black,
            )
            ,),
            Column(
              children: [
                Text("Feeling low? Lets see my photo collection",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                ),
                SizedBox(height: 80),
                Material(
                   color: Color.fromARGB(255, 235, 230, 228),
                   borderRadius: BorderRadius.circular(10),
                        
                  child: InkWell(          
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> HomeScreen(),
                        ));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                       
                      ),
                      child: Text("Get Start" ,style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),),
                    ),
                  ),
                ),
              ],),
          ],
         ),
    ),
  );
}
}