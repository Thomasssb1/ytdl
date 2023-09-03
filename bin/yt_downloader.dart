import 'package:args/args.dart';
import 'package:yt_downloader/yt_downloader.dart' as yt_downloader;
import 'package:yt_downloader/cmd.dart';
import 'dart:io';

void main(List<String> arguments) async{
  ArgResults? results = parse(arguments);
  if (results == null){
    print("Something went wrong. Arguments could not be parsed. Please try again.");
    exit(0);
  }else{
    await yt_downloader.downloadVideo(results['video']);
  }
}
