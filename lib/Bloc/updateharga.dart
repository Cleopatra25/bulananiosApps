import 'dart:async';

class UpdateHarga {
  StreamController _inputcontroller = StreamController();
  StreamSink get sinkin => _inputcontroller.sink;

  StreamController _outputcontroller = StreamController();
  StreamSink get sinkout => _outputcontroller.sink;

  Stream get output => _outputcontroller.stream;

  UpdateHarga() {
    _inputcontroller.stream.listen((event) {
      print(event);
      sinkout.add(event);
    });
  }

  void dispose() {
    _inputcontroller.close();
    _outputcontroller.close();
  }
}
