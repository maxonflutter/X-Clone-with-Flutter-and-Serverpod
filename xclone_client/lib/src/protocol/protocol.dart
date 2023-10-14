/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'post.dart' as _i2;
import 'post_audience_settings.dart' as _i3;
import 'post_reply_settings.dart' as _i4;
import 'post_type.dart' as _i5;
import 'user.dart' as _i6;
import 'package:xclone_client/src/protocol/post.dart' as _i7;
export 'post.dart';
export 'post_audience_settings.dart';
export 'post_reply_settings.dart';
export 'post_type.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Post) {
      return _i2.Post.fromJson(data, this) as T;
    }
    if (t == _i3.PostAudienceSettings) {
      return _i3.PostAudienceSettings.fromJson(data) as T;
    }
    if (t == _i4.PostReplySettings) {
      return _i4.PostReplySettings.fromJson(data) as T;
    }
    if (t == _i5.PostType) {
      return _i5.PostType.fromJson(data) as T;
    }
    if (t == _i6.User) {
      return _i6.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Post?>()) {
      return (data != null ? _i2.Post.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.PostAudienceSettings?>()) {
      return (data != null ? _i3.PostAudienceSettings.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i4.PostReplySettings?>()) {
      return (data != null ? _i4.PostReplySettings.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.PostType?>()) {
      return (data != null ? _i5.PostType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.User?>()) {
      return (data != null ? _i6.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i7.Post>) {
      return (data as List).map((e) => deserialize<_i7.Post>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Post) {
      return 'Post';
    }
    if (data is _i3.PostAudienceSettings) {
      return 'PostAudienceSettings';
    }
    if (data is _i4.PostReplySettings) {
      return 'PostReplySettings';
    }
    if (data is _i5.PostType) {
      return 'PostType';
    }
    if (data is _i6.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Post') {
      return deserialize<_i2.Post>(data['data']);
    }
    if (data['className'] == 'PostAudienceSettings') {
      return deserialize<_i3.PostAudienceSettings>(data['data']);
    }
    if (data['className'] == 'PostReplySettings') {
      return deserialize<_i4.PostReplySettings>(data['data']);
    }
    if (data['className'] == 'PostType') {
      return deserialize<_i5.PostType>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i6.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
