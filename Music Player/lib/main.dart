import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: const Color(0xFF191919),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF202020),
          elevation: 0,
        ),
      ),
      home: const MusicPlayerScreen(),
    );
  }
}

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  String _currentTrack = '';

  final List<String> _tracks = [
    'Irokz',
    'Hanumankind',
    'All Girls Are The Same',
    'Ransom',
    'Toosie Slide'
  ];

  @override
  void initState() {
    super.initState();
    _setupAudioPlayer();
  }

  void _setupAudioPlayer() {
    _audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });

    _audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        _duration = newDuration;
      });
    });

    _audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        _position = newPosition;
      });
    });
  }

  Future<void> _setAudio(String trackName) async {
    _audioPlayer.setReleaseMode(ReleaseMode.loop);
    await _audioPlayer.setSource(AssetSource('audio/$trackName.mp3'));
    setState(() {
      _currentTrack = trackName;
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  Widget _buildTrackButton(String trackName) {
    bool isCurrentTrack = _currentTrack == trackName;
    return ListTile(
  leading: const Icon(Icons.music_note),
  title: Text(trackName),
  onTap: () async {
    if (isCurrentTrack) {
      if (_isPlaying) {
        await _audioPlayer.pause();
      } else {
        await _audioPlayer.resume();
      }
    } else {
      await _setAudio(trackName);
      await _audioPlayer.resume();
    }
  },
);

  }

  Widget _buildProgressBar() {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        _seekToRelativePosition(details.localPosition);
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        _seekToRelativePosition(details.localPosition);
      },
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          FractionallySizedBox(
            widthFactor: _duration.inSeconds > 0
                ? _position.inSeconds / _duration.inSeconds
                : 0,
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _seekToRelativePosition(Offset localPosition) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final double widgetWidth = box.size.width;
    final double tapPosition = localPosition.dx.clamp(0, widgetWidth);
    final double percentage = tapPosition / widgetWidth;
    final double seekPosition = percentage * _duration.inMilliseconds;
    _audioPlayer.seek(Duration(milliseconds: seekPosition.round()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Player'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _tracks.length,
              itemBuilder: (context, index) {
                return _buildTrackButton(_tracks[index]);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF202020),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _currentTrack.isEmpty ? 'No track selected' : _currentTrack,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                _buildProgressBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_formatDuration(_position)),
                    Text(_formatDuration(_duration - _position)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.skip_previous),
                      onPressed: () {
                        final currentIndex = _tracks.indexOf(_currentTrack);
                        if (currentIndex > 0) {
                          final previousTrack = _tracks[currentIndex - 1];
                          _setAudio(previousTrack);
                          _audioPlayer.resume();
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                      onPressed: () async {
                        if (_isPlaying) {
                          await _audioPlayer.pause();
                        } else {
                          await _audioPlayer.resume();
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.skip_next),
                      onPressed: () {
                        final currentIndex = _tracks.indexOf(_currentTrack);
                        if (currentIndex < _tracks.length - 1) {
                          final nextTrack = _tracks[currentIndex + 1];
                          _setAudio(nextTrack);
                          _audioPlayer.resume();
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
