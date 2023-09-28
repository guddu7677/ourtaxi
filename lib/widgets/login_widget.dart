import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_taxi/utills/app_constants.dart';
import 'package:our_taxi/widgets/text_widget.dart';

Widget logingWidget(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       textWidget(text: AppConstants.helloNiceToMeetYou),
      textWidget(text: AppConstants.getMovingWithOurTaxi,fontSize: 22,fontWeight: FontWeight.bold),
  
      SizedBox(height: 30,),
     
     Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(color: Colors.white,boxShadow:[BoxShadow(
        color: Colors.black.withOpacity(0.05),blurRadius: 3,spreadRadius: 3)],
        borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child:InkWell(
                onTap: () {
                  
                },
                child: Container(
                  child: Row(
                    children: [
                      Expanded(child: Container(
                      ),),

                      textWidget(text: "+91"),
                      SizedBox(width: 10,),
                      Icon(Icons.keyboard_arrow_down_outlined)
              
                    ],
                  ),
                ),
              )
            ),


            Container(
              width: 1,
              height: 55,
              color: Colors.black.withOpacity(0.5),
            ),
             Expanded(
              flex: 3,
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal),
                    hintText:AppConstants.enterMobileNumber,
                    border: InputBorder.none
                  ),
              
              
                ),
              )
            ),
          ],
        ),
     ),
     SizedBox(height: 30,),

     Padding(
       padding: const EdgeInsets.all(8.0),
       child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: Colors.black,fontSize: 12),
        children: [
          TextSpan(
            text: AppConstants.byCreating + " ",style: GoogleFonts.poppins(
              fontWeight: FontWeight.normal,color: Colors.black
            )
          ),
           TextSpan(
            text: AppConstants.termOfService + " ",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold,)
          ),
          TextSpan(text:"and " ),
          TextSpan(
            text: AppConstants.privacyPolicy + " ",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold,)
          ),
        ]
       )),
     )

  ],
  
    ),
  );
}