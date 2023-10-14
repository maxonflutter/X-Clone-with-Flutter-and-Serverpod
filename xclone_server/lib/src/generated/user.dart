/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class User extends _i1.TableRow {
  User({
    int? id,
    required this.email,
    required this.username,
    required this.handle,
    required this.bio,
    required this.profileImageUrl,
    required this.profileBannerUrl,
    required this.followerCount,
    required this.followingCount,
  }) : super(id);

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      handle:
          serializationManager.deserialize<String>(jsonSerialization['handle']),
      bio: serializationManager.deserialize<String>(jsonSerialization['bio']),
      profileImageUrl: serializationManager
          .deserialize<String>(jsonSerialization['profileImageUrl']),
      profileBannerUrl: serializationManager
          .deserialize<String>(jsonSerialization['profileBannerUrl']),
      followerCount: serializationManager
          .deserialize<int>(jsonSerialization['followerCount']),
      followingCount: serializationManager
          .deserialize<int>(jsonSerialization['followingCount']),
    );
  }

  static final t = UserTable();

  String email;

  String username;

  String handle;

  String bio;

  String profileImageUrl;

  String profileBannerUrl;

  int followerCount;

  int followingCount;

  @override
  String get tableName => 'users';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'handle': handle,
      'bio': bio,
      'profileImageUrl': profileImageUrl,
      'profileBannerUrl': profileBannerUrl,
      'followerCount': followerCount,
      'followingCount': followingCount,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'handle': handle,
      'bio': bio,
      'profileImageUrl': profileImageUrl,
      'profileBannerUrl': profileBannerUrl,
      'followerCount': followerCount,
      'followingCount': followingCount,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'handle': handle,
      'bio': bio,
      'profileImageUrl': profileImageUrl,
      'profileBannerUrl': profileBannerUrl,
      'followerCount': followerCount,
      'followingCount': followingCount,
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
      case 'email':
        email = value;
        return;
      case 'username':
        username = value;
        return;
      case 'handle':
        handle = value;
        return;
      case 'bio':
        bio = value;
        return;
      case 'profileImageUrl':
        profileImageUrl = value;
        return;
      case 'profileBannerUrl':
        profileBannerUrl = value;
        return;
      case 'followerCount':
        followerCount = value;
        return;
      case 'followingCount':
        followingCount = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<User>> find(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findSingleRow(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<User>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UserExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserExpressionBuilder = _i1.Expression Function(UserTable);

class UserTable extends _i1.Table {
  UserTable() : super(tableName: 'users');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final email = _i1.ColumnString('email');

  final username = _i1.ColumnString('username');

  final handle = _i1.ColumnString('handle');

  final bio = _i1.ColumnString('bio');

  final profileImageUrl = _i1.ColumnString('profileImageUrl');

  final profileBannerUrl = _i1.ColumnString('profileBannerUrl');

  final followerCount = _i1.ColumnInt('followerCount');

  final followingCount = _i1.ColumnInt('followingCount');

  @override
  List<_i1.Column> get columns => [
        id,
        email,
        username,
        handle,
        bio,
        profileImageUrl,
        profileBannerUrl,
        followerCount,
        followingCount,
      ];
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();
