import 'package:flutter/material.dart';
import '../../../models/IndianRecipes.dart';

class RecipeCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children:<Widget> [
          SafeArea(
              child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount:recipes.length,
              itemBuilder: (context,index){
                return InkWell(
                  child: Card(
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            recipes[index].imgsrc,
                            fit: BoxFit.cover,
                            height: 300,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black26
                                ),
                                child: Text(
                                  recipes[index].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                  ),
                                )
                          )
                        ),
                      ],
                    ),
                  ),
                  onTap: (){},
                );
              }
              ),
            
          ),
          ],
        ),
      ),
    );
  }
}