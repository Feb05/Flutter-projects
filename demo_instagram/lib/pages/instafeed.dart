
import 'package:flutter/material.dart';

class Instagramfeed extends StatelessWidget {
  const Instagramfeed({super.key});

  final List<Map<String, String>> feedData =const
  [
  {
  "name":"Tom",
  "profilePic":"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png",
  "postImage":"https://t4.ftcdn.net/jpg/06/41/55/87/360_F_641558762_NSA5sf5mgLWZabgALXO7h1TsyTUUU6WV.jpg",
  "location":"SBCE",
  "likes":"35"
  },
  {
  "name":"Anjali Raj",
  "profilePic":"https://th.bing.com/th/id/OIP.GHGGLYe7gDfZUzF_tElxiQHaHa?rs=1&pid=ImgDetMain",
  "postImage":"https://t3.ftcdn.net/jpg/04/02/08/38/360_F_402083813_4dLEweSrZCiooyhx4ihf5nLTNrRQuucp.jpg",
  "location":"Noornad",
  "likes":"435"
  },
  {
  "name":"Mathew George",
  "profilePic":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
  "postImage":"https://media-cdn.tripadvisor.com/media/photo-s/1c/38/8d/93/kerala-is-not-only-the.jpg",
  "location":"Pandalam",
  "likes":"5"
  }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: feedData.length,
        itemBuilder: (context, index){
          return Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          feedData[index]["profilePic"]!,
                      ),
                    ),
                    title: Text(
                    feedData[index]["name"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(feedData[index]["location"]!,
                      style: TextStyle(fontSize: 8),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Image.network(feedData[index]["postImage"]!,
                      fit: BoxFit.fill,
                      width: double.infinity
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined)),
                      Text(feedData[index]["likes"]!),
                      IconButton(onPressed: (){}, icon:Icon(Icons.comment)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.send)),
                    ],
                  )
                ],
              )
          );
        }
    );
  }
}
