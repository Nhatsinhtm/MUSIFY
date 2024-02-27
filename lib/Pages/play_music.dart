




import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';





class PlayMusic  extends StatefulWidget {


  PlayMusic({ super.key ,required this.songModel, required this.autoNext,  required this.changTrack});
 SongModel songModel;
 Function changTrack,autoNext;

 // final GlobalKey<SearchState> key;
  @override
  State<PlayMusic> createState() => PlayMusicState();
}
class PlayMusicState extends State<PlayMusic> {
 AudioPlayer audioPlayer = AudioPlayer();
bool _isPlaying = false;
int _isLoop = 0;
Duration _duration = const Duration();
Duration _position = const Duration();

@override
  Future<void> dispose() async {
    // TODO: implement dispose
    super.dispose();
    await audioPlayer.dispose();
  }
@override
  void initState() {
    super.initState();
    playSong(widget.songModel);
    autoPlaySong();
  }
  // --------------------------------------auto play song---------------
 void autoPlaySong() {
   audioPlayer.playerStateStream.listen((event) {
     if(event.processingState== ProcessingState.completed){
       widget.autoNext(_isLoop);
     }
   });
 }
//  --------------------------------------------play song----------------
Future<void> playSong(SongModel songModel) async {
  widget.songModel = songModel;
    await audioPlayer.setUrl(widget.songModel.uri.toString());
    audioPlayer.play();
    _isPlaying=false;
    changeStatus();
    audioPlayer.durationStream.listen((D) {
      setState(() {
        _duration=D!;
      });
    });
  audioPlayer.positionStream.listen((event) {
    setState(() {
      _position=event;
    });
  });

}
// ------------------------------------------change status---------
void changeStatus(){
  setState(() {
    if(_isPlaying){
      audioPlayer.pause();
    }else{
      audioPlayer.play();
    }
    _isPlaying=!_isPlaying;
  });
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child:Column(
            children: [
//-------------------------------------------------------------------------------image audio
            Stack(
              children: [
                //artwork
                const Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    child: Image(image: AssetImage(('assets/images/img.png')),
                      width: double.maxFinite,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //back Button
                    ElevatedButton(
                      onPressed: () async {
                         Navigator.pop(context);
                      },
                      style:const ButtonStyle(shape: MaterialStatePropertyAll(CircleBorder(
                          side:  BorderSide(
                              color: Colors.black38,
                              style: BorderStyle.solid
                          )
                      )),
                          iconColor: MaterialStatePropertyAll(Colors.black),
                          backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                      child: const Icon(Icons.arrow_back),
                    ),
                    //Title
                    const Text('Now Playing',
                      style: TextStyle(color: Colors.white),),
                    //menu button
                    ElevatedButton(onPressed: () {
                    },
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(CircleBorder(
                          side: BorderSide(
                              color: Colors.black45,
                              style: BorderStyle.solid
                          )
                      ))), child: const Icon(Icons.menu),
                    )
                  ],
                ),
              ],
            ),
              //seekbar
              // ----------------------------------------------------------------name song
              Text(widget.songModel.displayNameWOExt),
              //=----------------------------------------------------------------artist
              Text(widget.songModel.artist.toString()),
              // -----------------------------------------------------------------seek
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Slider(value: _position.inSeconds.toDouble(),
                  max: _duration.inSeconds.toDouble(),
                  min: const Duration(microseconds:1 ).inSeconds.toDouble()
                  , onChanged: (value) {
                 setState(() {
                   _changeToSecond(value.toInt());
                 });
                },
            
                  onChangeEnd: (value) {},
                ),
              ),
              // ----------------------------------------------------------------time duration and position
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_position.toString().split(".")[0]),
                    Text(_duration.toString().split(".")[0]),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // --------------------------------------------------- -------- Button loop
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isLoop==0?_isLoop=1:_isLoop==1?_isLoop=2:_isLoop=0;
                          if(_isLoop==2){
                            audioPlayer.setLoopMode(LoopMode.one);
                          }else{
                            audioPlayer.setLoopMode(LoopMode.off);
                          }

                        });
    },
                      icon: Icon(Icons.refresh,
                        color: _isLoop==0?Colors.grey:_isLoop==1?Colors.green:
                        Colors.blue,)),
                  // ------------------------------------------------------------ Button previous
                  IconButton(onPressed: () {
                    widget.changTrack(false);
                  }, icon: const Icon(Icons.skip_previous)),
                  // ------------------------------------------------------------ Button play/pause
                  IconButton(onPressed: () {
                    changeStatus();
                  },
                    icon: Icon(_isPlaying?Icons.pause:Icons.play_arrow),),
                  // ------------------------------------------------------------ Button next
                  IconButton(onPressed: () {
                    widget.changTrack(true);
                  }, icon: const Icon(Icons.skip_next)),
                ],
              )
            ],
          )
        ),
      ),
    );
  }

void _changeToSecond(int seconds){
  Duration duration = Duration(seconds: seconds);
  audioPlayer.seek(duration);
}
}



