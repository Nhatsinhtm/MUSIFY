


import 'package:flutter/material.dart';
import 'package:musifyflutter/Pages/play_music.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({super.key});

  @override
  State<MyMusic> createState() => MyMusicState();
}

class MyMusicState extends State<MyMusic> {
 final  _audioQuery = OnAudioQuery();
  List<SongModel> songs =[];
 GlobalKey<PlayMusicState> keyGlobal= GlobalKey();
  int current= 0;
  
  @override
  void initState() {
    super.initState();
    requestPermission();
    getTrack();
  }

  void getTrack() async {
    songs = await _audioQuery.querySongs(
      ignoreCase: true,
      orderType: OrderType.ASC_OR_SMALLER,
      sortType: SongSortType.DISPLAY_NAME,
      uriType:UriType.EXTERNAL,

    );
    setState(() {
      songs=songs;
    });
  }

  void  autoNext(int a){
    if(a==0){
      if(current!=songs.length-1){
        current++;
      }

    }
    if(a==1){
      if(current==songs.length-1){
        current=0;
      }
      else{
        current++;
      }
    }
    keyGlobal.currentState?.playSong(songs[current]);
  }

  void changeTrack(bool isNext  ){


     if(isNext){
       if(current!=songs.length-1){
        current++;

     }else{
           current=0;
       }
     }else{
       if(current!=0){
         current--;
       }else{
         current=songs.length-1;
       }
     }
   keyGlobal.currentState?.playSong(songs[current]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body:
          ListView.builder(
            itemCount:songs.length,
            itemBuilder: (context, index) =>
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                  tileColor: Colors.black38,
                  title: Text(songs[index].displayNameWOExt,style: const TextStyle(color: Colors.white)),
                  subtitle: Text(songs[index].artist.toString()),
                  leading: QueryArtworkWidget(id: songs[index].id, type: ArtworkType.AUDIO),
                  trailing: const Icon(Icons.play_arrow),
                  onTap: () {
                    current=index;
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PlayMusic( autoNext: autoNext, changTrack: changeTrack,songModel: songs[current] , key: keyGlobal,);
                    },));
                  }
                ),
              ),
    );

  }
  void requestPermission()  {
      Permission.storage.request();
  }
}

