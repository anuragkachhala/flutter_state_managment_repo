import 'package:flutter_state_management/model/api/song_result.dart';
import 'package:flutter_state_management/model/domain/network_song.dart';

class SongMapper {

  NetworkSong toDomainModel(SongResultItem songResultItem) {
    return NetworkSong(
      lyricsURL: songResultItem.lyricsURL,
      albumThumbnail: songResultItem.albumThumbnail,
      id: songResultItem.id,
      title: songResultItem.title,
      artist: songResultItem.artist
    );
  }
}