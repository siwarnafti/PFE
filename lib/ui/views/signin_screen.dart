import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
     final deviceWidth = MediaQuery.sizeOf(context).width;
   
    return Scaffold(
      appBar: AppBar(
        
        title:  Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(deviceWidth*0.02),
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3)
    
              ),
    
              child: const Icon(Icons.arrow_back),),),
              SizedBox(width: deviceWidth*0.3,),

            const Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        
    
        
      ),
      body:Column(children: [
        SizedBox(height: deviceHeight*0.03,),
      TextField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                labelStyle: const TextStyle(color: Colors.grey),
                hintText: 'Enter your email address',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.purple),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),),
              TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.purple),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),),
      ],)
    );
  }
}