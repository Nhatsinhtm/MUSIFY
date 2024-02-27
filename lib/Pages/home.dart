import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(

                    child: ElevatedButton(
                       onPressed: () {
                         Navigator.pushNamed(context, '/loadingpage');
                       },
                      style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                       const CircleBorder(side: BorderSide(color: Colors.red,style: BorderStyle.solid))
                      ),


                      ),
                      child: const Icon(Icons.add),

                    ),
                  ),
                  Container(
                    child: const Text("Hi, Sinh",style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                          const CircleBorder(side: BorderSide(color: Colors.red,style: BorderStyle.solid))
                      )),
                      child: const Icon(Icons.add),

                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),

              Container(
                child: const Text('Recommendations',
                style: TextStyle(color: Colors.grey,fontSize: 12),),
              ),
              const SizedBox(
                width: 150,
                child: Text('Can, We have prepared several mixes for you',
                softWrap: true,
                  style: TextStyle(color: Colors.white,) ),
              ),
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 200,
                      height: 300,

                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                      child: Stack(

                        children: [
                          const Positioned(
                               left:5,
                              top: 2,
                              child: Text('your remix',
                              style: TextStyle(fontSize: 10),
                              )
                          ),
                        const Positioned(
                            left: 5,
                            top: 20,
                            child
                            : Text('Shazam Mix',
                            )),

                        Positioned(
                          left: 140,
                          bottom: 0,
                          child: ElevatedButton(onPressed: () {
                          },
                            style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                             const CircleBorder(
                                 side: BorderSide( color: Colors.black)
                             )
                            )),
                              child: const Icon(Icons.play_arrow)),
                        )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 300,

                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                      child: Stack(

                        children: [
                          const Positioned(
                              left:5,
                              top: 2,
                              child: Text('your remix',
                                style: TextStyle(fontSize: 10),
                              )
                          ),
                          const Positioned(
                              left: 5,
                              top: 20,
                              child
                                  : Text('Shazam Mix',
                              )),

                          Positioned(
                            left: 140,
                            bottom: 0,
                            child: ElevatedButton(onPressed: () {
                            },
                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(
                                        side: BorderSide( color: Colors.black)
                                    )
                                )),
                                child: const Icon(Icons.play_arrow)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 300,

                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                      child: Stack(

                        children: [
                          const Positioned(
                              left:5,
                              top: 2,
                              child: Text('your remix',
                                style: TextStyle(fontSize: 10),
                              )
                          ),
                          const Positioned(
                              left: 5,
                              top: 20,
                              child
                                  : Text('Shazam Mix',
                              )),

                          Positioned(
                            left: 140,
                            bottom: 0,
                            child: ElevatedButton(onPressed: () {
                            },
                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(
                                        side: BorderSide( color: Colors.black)
                                    )
                                )),
                                child: const Icon(Icons.play_arrow)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 300,

                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                      child: Stack(

                        children: [
                          const Positioned(
                              left:5,
                              top: 2,
                              child: Text('your remix',
                                style: TextStyle(fontSize: 10),
                              )
                          ),
                          const Positioned(
                              left: 5,
                              top: 20,
                              child
                                  : Text('Shazam Mix',
                              )),

                          Positioned(
                            left: 140,
                            bottom: 0,
                            child: ElevatedButton(onPressed: () {
                            },
                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(
                                        side: BorderSide( color: Colors.black)
                                    )
                                )),
                                child: const Icon(Icons.play_arrow)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                child: const Text('Recommend',
                style: TextStyle(color: Colors.white),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      foregroundDecoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/logo/Title.png')),),
                      decoration: BoxDecoration(color:Colors.grey ,borderRadius:  BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Positioned(
                          left: 45,
                              top: 2,
                              child: ElevatedButton(

                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                  const CircleBorder(side:  BorderSide(style:BorderStyle.solid))
                                ),
                                  minimumSize: MaterialStateProperty.all(const Size(5, 5))
                                ),
                                  onPressed:  () {},
                                  child: const Icon(Icons.play_arrow,
                                  ),
                               )
                          ),
                          Positioned(
                            bottom: 2,
                              left: 5,
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(color: Colors.black38, borderRadius:BorderRadius.circular(10)),

                                child: const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children: [
                                      Text('after Hour',
                                      style:  TextStyle(color: Colors.white),
                                      ),
                                      Text('The weekend',
                                        textAlign:TextAlign.start,
                                        style:  TextStyle(color: Colors.white,fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      foregroundDecoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/logo/Title.png')),),
                      decoration: BoxDecoration(color:Colors.grey ,borderRadius:  BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 45,
                              top: 2,
                              child: ElevatedButton(

                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(side:  BorderSide(style:BorderStyle.solid))
                                ),
                                    minimumSize: MaterialStateProperty.all(const Size(5, 5))
                                ),
                                onPressed:  () {},
                                child: const Icon(Icons.play_arrow,
                                ),
                              )
                          ),
                          Positioned(
                              bottom: 2,
                              left: 5,
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(color: Colors.black38, borderRadius:BorderRadius.circular(10)),

                                child: const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children: [
                                      Text('after Hour',
                                        style:  TextStyle(color: Colors.white),
                                      ),
                                      Text('The weekend',
                                        textAlign:TextAlign.start,
                                        style:  TextStyle(color: Colors.white,fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      foregroundDecoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/logo/Title.png')),),
                      decoration: BoxDecoration(color:Colors.grey ,borderRadius:  BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 45,
                              top: 2,
                              child: ElevatedButton(

                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(side:  BorderSide(style:BorderStyle.solid))
                                ),
                                    minimumSize: MaterialStateProperty.all(const Size(5, 5))
                                ),
                                onPressed:  () {},
                                child: const Icon(Icons.play_arrow,
                                ),
                              )
                          ),
                          Positioned(
                              bottom: 2,
                              left: 5,
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(color: Colors.black38, borderRadius:BorderRadius.circular(10)),

                                child: const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children: [
                                      Text('after Hour',
                                        style:  TextStyle(color: Colors.white),
                                      ),
                                      Text('The weekend',
                                        textAlign:TextAlign.start,
                                        style:  TextStyle(color: Colors.white,fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      foregroundDecoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/logo/Title.png')),),
                      decoration: BoxDecoration(color:Colors.grey ,borderRadius:  BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 45,
                              top: 2,
                              child: ElevatedButton(

                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(side:  BorderSide(style:BorderStyle.solid))
                                ),
                                    minimumSize: MaterialStateProperty.all(const Size(5, 5))
                                ),
                                onPressed:  () {},
                                child: const Icon(Icons.play_arrow,
                                ),
                              )
                          ),
                          Positioned(
                              bottom: 2,
                              left: 5,
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(color: Colors.black38, borderRadius:BorderRadius.circular(10)),

                                child: const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children: [
                                      Text('after Hour',
                                        style:  TextStyle(color: Colors.white),
                                      ),
                                      Text('The weekend',
                                        textAlign:TextAlign.start,
                                        style:  TextStyle(color: Colors.white,fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      foregroundDecoration: const BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/logo/Title.png')),),
                      decoration: BoxDecoration(color:Colors.grey ,borderRadius:  BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 45,
                              top: 2,
                              child: ElevatedButton(

                                style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>(
                                    const CircleBorder(side:  BorderSide(style:BorderStyle.solid))
                                ),
                                    minimumSize: MaterialStateProperty.all(const Size(5, 5))
                                ),
                                onPressed:  () {},
                                child: const Icon(Icons.play_arrow,
                                ),
                              )
                          ),
                          Positioned(
                              bottom: 2,
                              left: 5,
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(color: Colors.black38, borderRadius:BorderRadius.circular(10)),

                                child: const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children: [
                                      Text('after Hour',
                                        style:  TextStyle(color: Colors.white),
                                      ),
                                      Text('The weekend',
                                        textAlign:TextAlign.start,
                                        style:  TextStyle(color: Colors.white,fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),

                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
