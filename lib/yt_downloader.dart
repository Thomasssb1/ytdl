import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'dart:io';

downloadVideo(String id) async{
  print("Downloading video from youtube that will play in the background. The video being downloaded is https://www.youtube.com/watch?v=$id");
    var yt = YoutubeExplode();
    var manifest = await yt.videos.streams.getManifest(id);
    var streamInfo =  manifest.videoOnly.sortByVideoQuality().first;
    var stream = yt.videos.streamsClient.get(streamInfo);
    await File("results\\video1.mp4").create().then((File file) async{;
    var fileStream = file.openWrite();
    await stream.pipe(fileStream);

    await fileStream.flush();
    await fileStream.close();
    });
}
