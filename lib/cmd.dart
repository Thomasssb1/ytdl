import 'package:args/args.dart';


ArgResults? parse(args,){
  var parser = ArgParser();
  parser.addOption('video', abbr: 'v');
  parser.addOption('output', abbr: 'o');

  var results = parser.parse(args);
  if (results.wasParsed('help')){
    print(parser.usage);
  }else if (!results.wasParsed('video')){
    print("You need to have a link to a youtube video in order to use this.\nTo do this add the option --video or -v along with the link to the youtube video.");
  }else if (!results.wasParsed('output')){
    print("You need to provide an output location.\nTo do this add the option --output or -o along with a path to the location where the video will be installed.");
  }
  return results;
}