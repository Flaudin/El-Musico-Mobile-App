class Option {
  bool streaming;
  int streamingDuration;
  bool offline;
  bool hq;
  bool adsDisplay;
  bool adsAudio;
  bool tooManyDevices;
  bool canSubscribe;
  int radioSkips;
  bool lossLess;
  bool preview;
  bool radio;

  Option(
      {required this.adsAudio,
      required this.adsDisplay,
      required this.canSubscribe,
      required this.hq,
      required this.lossLess,
      required this.offline,
      required this.preview,
      required this.radio,
      required this.radioSkips,
      required this.streaming,
      required this.streamingDuration,
      required this.tooManyDevices});

  factory Option.optionsfromJson(Map<String, dynamic> json) {
    return Option(
        adsAudio: json['ads_audio'],
        adsDisplay: json['ads_display'],
        canSubscribe: json['can_subscribe'],
        hq: json['hq'],
        lossLess: json['lossless'],
        offline: json['offline'],
        preview: json['preview'],
        radio: json['radio'],
        radioSkips: json['radio_skips'],
        streaming: json['streaming'],
        streamingDuration: json['streaming_duration'],
        tooManyDevices: json['too_many_devices']);
  }
}
