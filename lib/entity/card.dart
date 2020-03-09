import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

@JsonSerializable()
class PeopleResponse {
  int count;
  String next;
  String previous;
  List<PeopleDto> results;

  PeopleResponse({this.count, this.next, this.previous, this.results});

  factory PeopleResponse.fromJson(Map<String, dynamic> json) =>
      _$PeopleResponseFromJson(json);
}

@JsonSerializable()
class PeopleDto {
  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  String homeworld;
  List<String> films;
  List<String> species;
  List<String> vehicles;
  List<String> starships;
  String created;
  String edited;
  String url;

  PeopleDto(
      {this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url});

  factory PeopleDto.fromJson(Map<String, dynamic> json) =>
      _$PeopleDtoFromJson(json);
}
