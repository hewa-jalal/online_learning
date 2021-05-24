import 'package:cloud_firestore/cloud_firestore.dart';

class VideoRepositoy {
  final _videosCollection = FirebaseFirestore.instance.collection('videos');

  void addVideoUrl({
    required String roomText,
    required String courseTitle,
    required String? dept,
    required int? stage,
  }) {
    _videosCollection.add(
      {
        'serverUrl': 'https://meet.jit.si/${roomText}',
        'courseTitle': courseTitle,
        'dept': dept,
        'stage': stage,
      },
    );
  }

  Future<String?> getVideoUrl({required String roomText}) async {
    final videosQuery = await _videosCollection
        .where('courseTitle', isEqualTo: 'IT')
        .where('dept', isEqualTo: 'ITM')
        .where('stage', isEqualTo: 4)
        .get();
    final list = await videosQuery.docs
        .map((doc) => doc.data()['serverUrl'] as String?)
        .toList();
    // print('list videoUrl ====> $list');

    if (list.length > 0) {
      return list[0];
    } else {
      return '';
    }
  }
}
