import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final videoURL = 'https://youtu.be/E_RlzBKpAWc';
  //final videoUrl = 'https://youtu.be/oQMc7Sq36mI';
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL
      // 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );
    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(
            autoPlay: false
        )
    );
    //_initializeVideoPlayerFuture = _controller.initialize();
    //_controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('YouTube', style: TextStyle(color: Colors.black),),
          leading: Padding(padding: EdgeInsets.only(left: 12), child: Image.asset('asset/yt.png')),
          actions: [
            IconButton(iconSize: 20, onPressed: (){}, icon: Icon(Icons.cast_outlined), color: Colors.black, ),
            IconButton(iconSize: 20, onPressed: (){}, icon: Icon(Icons.notifications_outlined, color: Colors.black,)),
            IconButton(iconSize: 20, onPressed: (){}, icon: Icon(Icons.search_outlined), color: Colors.black, ),
            IconButton(iconSize: 20, onPressed: (){}, icon: CircleAvatar(backgroundImage: AssetImage('asset/img.png'),))],
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: () {  }, icon: Icon(Icons.explore_outlined, color: Colors.black,),),
                          Text('Explore', style: TextStyle(color: Colors.black,),),
                          SizedBox(width: 5,)
                        ],
                      ),
                    ),
                    VerticalDivider(color: Colors.black, thickness: 2,),
                  ],
                ),
              ),
              Container( decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
                child: TextButton(onPressed: () {  }, child: Text('All', style: TextStyle(color: Colors.black),),),),
              Container(decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
                child: TextButton(onPressed: () {  }, child: Text('Music', style: TextStyle(color: Colors.black),),),),
              Container(decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
                child: TextButton(onPressed: () {  }, child: Text('Songs', style: TextStyle(color: Colors.black),),),),
              Container(decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
                child: TextButton(onPressed: () {  }, child: Text('Gaming', style: TextStyle(color: Colors.black),),),),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: TextButton(onPressed: () {  }, child: Text('Classical', style: TextStyle(color: Colors.black),),),),
              Container(decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
                child: TextButton(onPressed: () {  }, child: Text('Watched', style: TextStyle(color: Colors.black),),),),

            ],
          ),

        ),

        body: SingleChildScrollView(
            child: Container(
              child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0,),
                              child: YoutubePlayer(
                                controller: _controller,
                                showVideoProgressIndicator: true,
                                onReady: () => debugPrint(''),
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(
                                    isExpanded: true,
                                    colors: ProgressBarColors(
                                        playedColor: Colors.amber,
                                        handleColor: Colors.amberAccent
                                    ),
                                  ),
                                  //PlaybackSpeedButton()
                                ],
                              ),

                              /* FutureBuilder(
                          future: _initializeVideoPlayerFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.done) {
                              return AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller),
                              );
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          },
                        ),*/
                              //child: Image.asset( 'asset/img1.jpg', height: 220.0, width: double.infinity, fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => print('Navigate to profile'),
                                child: CircleAvatar(
                                  backgroundImage:  AssetImage('asset/img.png'),
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Jail Tamil Movie Official HD First Look Poster | G V Prakash',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15.0),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Abitha A • 169 views • 3 months ago',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.more_vert, size: 20.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: Image.asset( 'asset/img2.jpg',
                                height: 220.0,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 8.0,
                              right: 20.0,
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                color: Colors.black,
                                child: Text(
                                  '03:12',
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => print('Navigate to profile'),
                                child: CircleAvatar(
                                  backgroundImage:  AssetImage('asset/img.png'),
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Vijay’s new Tamil film titled Beast, first-look poster unveiled on the eve of his birthday',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15.0),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Abitha A • 1k views • 6 months ago',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.more_vert, size: 20.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                  ]),)

        ),
      ),
    );
  }
}
