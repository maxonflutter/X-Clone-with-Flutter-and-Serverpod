/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Post extends _i1.TableRow {
  Post({
    int? id,
    required this.caption,
    this.imageUrl,
    required this.type,
    required this.audience,
    required this.reply,
    required this.userId,
    required this.username,
    required this.profileImageUrl,
  }) : super(id);

  factory Post.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Post(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      caption: serializationManager
          .deserialize<String>(jsonSerialization['caption']),
      imageUrl: serializationManager
          .deserialize<String?>(jsonSerialization['imageUrl']),
      type: serializationManager
          .deserialize<_i2.PostType>(jsonSerialization['type']),
      audience: serializationManager
          .deserialize<_i2.PostAudienceSettings>(jsonSerialization['audience']),
      reply: serializationManager
          .deserialize<_i2.PostReplySettings>(jsonSerialization['reply']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      profileImageUrl: serializationManager
          .deserialize<String>(jsonSerialization['profileImageUrl']),
    );
  }

  static final t = PostTable();

  String caption;

  String? imageUrl;

  _i2.PostType type;

  _i2.PostAudienceSettings audience;

  _i2.PostReplySettings reply;

  int userId;

  String username;

  String profileImageUrl;

  @override
  String get tableName => 'posts';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'caption': caption,
      'imageUrl': imageUrl,
      'type': type,
      'audience': audience,
      'reply': reply,
      'userId': userId,
      'username': username,
      'profileImageUrl': profileImageUrl,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'caption': caption,
      'imageUrl': imageUrl,
      'type': type,
      'audience': audience,
      'reply': reply,
      'userId': userId,
      'username': username,
      'profileImageUrl': profileImageUrl,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'caption': caption,
      'imageUrl': imageUrl,
      'type': type,
      'audience': audience,
      'reply': reply,
      'userId': userId,
      'username': username,
      'profileImageUrl': profileImageUrl,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'caption':
        caption = value;
        return;
      case 'imageUrl':
        imageUrl = value;
        return;
      case 'type':
        type = value;
        return;
      case 'audience':
        audience = value;
        return;
      case 'reply':
        reply = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'username':
        username = value;
        return;
      case 'profileImageUrl':
        profileImageUrl = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Post>> find(
    _i1.Session session, {
    PostExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Post>(
      where: where != null ? where(Post.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Post?> findSingleRow(
    _i1.Session session, {
    PostExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Post>(
      where: where != null ? where(Post.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Post?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Post>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PostExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Post>(
      where: where(Post.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PostExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Post>(
      where: where != null ? where(Post.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PostExpressionBuilder = _i1.Expression Function(PostTable);

class PostTable extends _i1.Table {
  PostTable() : super(tableName: 'posts');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final caption = _i1.ColumnString('caption');

  final imageUrl = _i1.ColumnString('imageUrl');

  final type = _i1.ColumnEnum<_i2.PostType>('type');

  final audience = _i1.ColumnEnum<_i2.PostAudienceSettings>('audience');

  final reply = _i1.ColumnEnum<_i2.PostReplySettings>('reply');

  final userId = _i1.ColumnInt('userId');

  final username = _i1.ColumnString('username');

  final profileImageUrl = _i1.ColumnString('profileImageUrl');

  @override
  List<_i1.Column> get columns => [
        id,
        caption,
        imageUrl,
        type,
        audience,
        reply,
        userId,
        username,
        profileImageUrl,
      ];
}

@Deprecated('Use PostTable.t instead.')
PostTable tPost = PostTable();
