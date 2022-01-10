import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';

import 'favcat.dart';

@immutable
class User {

  const User({
    this.username,
    this.nickName,
    this.memberId,
    this.passHash,
    this.igneous,
    this.hathPerks,
    this.sk,
    this.avatarUrl,
    this.favcat,
  });

  final String? username;
  final String? nickName;
  final String? memberId;
  final String? passHash;
  final String? igneous;
  final String? hathPerks;
  final String? sk;
  final String? avatarUrl;
  final List<Favcat>? favcat;

  factory User.fromJson(Map<String,dynamic> json) => User(
    username: json['username'] != null ? json['username'] as String : null,
    nickName: json['nickName'] != null ? json['nickName'] as String : null,
    memberId: json['memberId'] != null ? json['memberId'] as String : null,
    passHash: json['passHash'] != null ? json['passHash'] as String : null,
    igneous: json['igneous'] != null ? json['igneous'] as String : null,
    hathPerks: json['hathPerks'] != null ? json['hathPerks'] as String : null,
    sk: json['sk'] != null ? json['sk'] as String : null,
    avatarUrl: json['avatarUrl'] != null ? json['avatarUrl'] as String : null,
    favcat: json['favcat'] != null ? (json['favcat'] as List? ?? []).map((e) => Favcat.fromJson(e as Map<String, dynamic>)).toList() : null
  );
  
  Map<String, dynamic> toJson() => {
    'username': username,
    'nickName': nickName,
    'memberId': memberId,
    'passHash': passHash,
    'igneous': igneous,
    'hathPerks': hathPerks,
    'sk': sk,
    'avatarUrl': avatarUrl,
    'favcat': favcat?.map((e) => e.toJson()).toList()
  };

  User clone() => User(
    username: username,
    nickName: nickName,
    memberId: memberId,
    passHash: passHash,
    igneous: igneous,
    hathPerks: hathPerks,
    sk: sk,
    avatarUrl: avatarUrl,
    favcat: favcat?.map((e) => e.clone()).toList()
  );


  User copyWith({
    Optional<String?>? username,
    Optional<String?>? nickName,
    Optional<String?>? memberId,
    Optional<String?>? passHash,
    Optional<String?>? igneous,
    Optional<String?>? hathPerks,
    Optional<String?>? sk,
    Optional<String?>? avatarUrl,
    Optional<List<Favcat>?>? favcat
  }) => User(
    username: checkOptional(username, this.username),
    nickName: checkOptional(nickName, this.nickName),
    memberId: checkOptional(memberId, this.memberId),
    passHash: checkOptional(passHash, this.passHash),
    igneous: checkOptional(igneous, this.igneous),
    hathPerks: checkOptional(hathPerks, this.hathPerks),
    sk: checkOptional(sk, this.sk),
    avatarUrl: checkOptional(avatarUrl, this.avatarUrl),
    favcat: checkOptional(favcat, this.favcat),
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is User && username == other.username && nickName == other.nickName && memberId == other.memberId && passHash == other.passHash && igneous == other.igneous && hathPerks == other.hathPerks && sk == other.sk && avatarUrl == other.avatarUrl && favcat == other.favcat;

  @override
  int get hashCode => username.hashCode ^ nickName.hashCode ^ memberId.hashCode ^ passHash.hashCode ^ igneous.hashCode ^ hathPerks.hashCode ^ sk.hashCode ^ avatarUrl.hashCode ^ favcat.hashCode;
}
