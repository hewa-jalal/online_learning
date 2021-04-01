import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class VideoRepositoy {
  final _videosCollection = FirebaseFirestore.instance.collection('videos');

  void addVideoUrl({@required String roomText}) {
    _videosCollection.add(
      {
        'serverUrl': 'https://meet.jit.si/${roomText}',
      },
    );
  }

  Future<bool> getVideoUrl({@required String roomText}) async {
    final videosQuery = await _videosCollection.get();
    final boolList = await videosQuery.docs
        .map(
          (doc) => doc.data().containsValue('https://meet.jit.si/${roomText}'),
        )
        .toList();
    if (boolList.contains(true))
      return true;
    else
      return false;
  }
}
