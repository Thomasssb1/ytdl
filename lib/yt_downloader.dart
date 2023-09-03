import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'dart:io';

downloadVideo(String id, String output) async{
  print("Downloading video from youtube that will play in the background. The video being downloaded is https://www.youtube.com/watch?v=$id");
    var yt = YoutubeExplode();
    var manifest = await yt.videos.streams.getManifest(id);
    var streamInfo =  manifest.videoOnly.sortByVideoQuality().first;
    var stream = yt.videos.streamsClient.get(streamInfo);
    await File(output).create().then((File file) async{;
    var fileStream = file.openWrite();
    await stream.pipe(fileStream).whenComplete(()=>print("Video download has completed. Check $output."));

    await fileStream.flush();
    await fileStream.close();
    });
    yt.close();
}

getVideoId(String video){
  try{
    var link = Uri.parse(video);
    return link.query.replaceFirst('v=', '');
  }catch(e){
    // check if valid id in future
    print("Continuing with video generation, assuming the value you put for --video is the id.");
    return video;
  }
}
