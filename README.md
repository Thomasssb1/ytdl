# YT Downloader
Annoyed at how hard it has become to just download a youtube video? Online solutions don't work as expected or are full of ads? This repo offers an easy to use command line script which downloads a youtube video to your local device without any extra steps. <br>
This uses an implementation of [youtube_explode_dart](https://pub.dev/packages/youtube_explode_dart) to mostly make this happen, as well as [args](https://pub.dev/packages/args) for the command line interface.

### Need this on mobile?
No worries, I have made an app version that has an easy to use interface - check it out [here](https://github.com/Thomasssb1/ytdl_app/tree/main).

## Implementation
To get started, just download one of the [releases](https://github.com/Thomasssb1/yt_downloader/releases#latest) which includes a precompiled executable - so you do not need to have dart or any of the libraries to run this.<br>
Once you have the release installed, you will need to add it to your path. To learn how to do so click [here](https://gist.github.com/nex3/c395b2f8fd4b02068be37c961301caa7).

To use this tool, you can call the command **ytdl** on your command line. Like so: <br>
```cmd
ytdl -v https://www.youtube.com/watch?v=CH50zuS8DD0 -o final.mp4
```
## Compiling yourself
To compile yourself, you can use [dart compile](https://dart.dev/tools/dart-compile).<br>
To compile to an exe file, run the following command inside of the main project folder:<br>
```zsh
$ dart compile exe bin/ytdl.dart output=./ytdl
```
This will produce an exe file which can be used the same as any of the [releases](https://github.com/Thomasssb1/yt_downloader/releases#latest).
### Help
To get help on running ytdl, run <br>
```zsh
$ ytdl --help
```
### Warning
This tool does not allow for you to ignore any copyright laws and it is always recommended to get in contact with the youtube video owner before downloading the video. This repo is not responsible for ensuring that you follow copyright laws.
