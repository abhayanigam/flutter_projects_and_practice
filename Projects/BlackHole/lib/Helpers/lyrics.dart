import 'dart:convert';

import 'package:audiotagger/audiotagger.dart';
import 'package:audiotagger/models/tag.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

// ignore: avoid_classes_with_only_static_members
class Lyrics {
  static Future<String> getLyrics({
    required String id,
    required String title,
    required String artist,
    required bool saavnHas,
  }) async {
    String lyrics = '';
    if (saavnHas) {
      Logger.root.info('Getting Lyrics from Saavn');
      lyrics = await getSaavnLyrics(id);
    } else {
      Logger.root.info('Lyrics not available on Saavn, finding on Musixmatch');
      lyrics = await getMusixMatchLyrics(title: title, artist: artist);
      if (lyrics == '') {
        Logger.root.info('Lyrics not found on Musixmatch, searching on Google');
        lyrics = await getGoogleLyrics(title: title, artist: artist);
      }
    }
    return lyrics;
  }

  static Future<String> getSaavnLyrics(String id) async {
    final Uri lyricsUrl = Uri.https(
      'www.jiosaavn.com',
      '/api.php?__call=lyrics.getLyrics&lyrics_id=$id&ctx=web6dot0&api_version=4&_format=json',
    );
    final Response res =
        await get(lyricsUrl, headers: {'Accept': 'application/json'});

    final List<String> rawLyrics = res.body.split('-->');
    Map fetchedLyrics = {};
    if (rawLyrics.length > 1) {
      fetchedLyrics = json.decode(rawLyrics[1]) as Map;
    } else {
      fetchedLyrics = json.decode(rawLyrics[0]) as Map;
    }
    final String lyrics =
        fetchedLyrics['lyrics'].toString().replaceAll('<br>', '\n');
    return lyrics;
  }

  static Future<String> getGoogleLyrics({
    required String title,
    required String artist,
  }) async {
    const String url =
        'https://www.google.com/search?client=safari&rls=en&ie=UTF-8&oe=UTF-8&q=';
    const String delimiter1 =
        '</div></div></div></div><div class="hwc"><div class="BNeawe tAd8D AP7Wnd"><div><div class="BNeawe tAd8D AP7Wnd">';
    const String delimiter2 =
        '</div></div></div></div></div><div><span class="hwc"><div class="BNeawe uEec3 AP7Wnd">';
    String lyrics = '';
    try {
      lyrics = (await get(
        Uri.parse(Uri.encodeFull('$url$title by $artist lyrics')),
      ))
          .body;
      lyrics = lyrics.split(delimiter1).last;
      lyrics = lyrics.split(delimiter2).first;
      if (lyrics.contains('<meta charset="UTF-8">')) throw Error();
    } catch (_) {
      try {
        lyrics = (await get(
          Uri.parse(
            Uri.encodeFull('$url$title by $artist song lyrics'),
          ),
        ))
            .body;
        lyrics = lyrics.split(delimiter1).last;
        lyrics = lyrics.split(delimiter2).first;
        if (lyrics.contains('<meta charset="UTF-8">')) throw Error();
      } catch (_) {
        try {
          lyrics = (await get(
            Uri.parse(
              Uri.encodeFull(
                '$url${title.split("-").first} by $artist lyrics',
              ),
            ),
          ))
              .body;
          lyrics = lyrics.split(delimiter1).last;
          lyrics = lyrics.split(delimiter2).first;
          if (lyrics.contains('<meta charset="UTF-8">')) throw Error();
        } catch (_) {
          lyrics = '';
        }
      }
    }
    return lyrics.trim();
  }

  static Future<String> getOffLyrics(String path) async {
    try {
      final Audiotagger tagger = Audiotagger();
      final Tag? tags = await tagger.readTags(path: path);
      return tags?.lyrics ?? '';
    } catch (e) {
      return '';
    }
  }

  static Future<String> getLyricsLink(String song, String artist) async {
    const String authority = 'www.musixmatch.com';
    final String unencodedPath = '/search/$song $artist';
    final Response res = await get(Uri.https(authority, unencodedPath));
    if (res.statusCode != 200) return '';
    final RegExpMatch? result =
        RegExp(r'href=\"(\/lyrics\/.*?)\"').firstMatch(res.body);
    return result == null ? '' : result[1]!;
  }

  static Future<String> scrapLink(String unencodedPath) async {
    Logger.root.info('Trying to scrap lyrics from $unencodedPath');
    const String authority = 'www.musixmatch.com';
    final Response res = await get(Uri.https(authority, unencodedPath));
    if (res.statusCode != 200) return '';
    final List<String?> lyrics = RegExp(
      r'<span class=\"lyrics__content__ok\">(.*?)<\/span>',
      dotAll: true,
    ).allMatches(res.body).map((m) => m[1]).toList();

    return lyrics.isEmpty ? '' : lyrics.join('\n');
  }

  static Future<String> getMusixMatchLyrics({
    required String title,
    required String artist,
  }) async {
    final String link = await getLyricsLink(title, artist);
    Logger.root.info('Found Musixmatch Lyrics Link: $link');
    final String lyrics = await scrapLink(link);
    return lyrics;
  }
}
