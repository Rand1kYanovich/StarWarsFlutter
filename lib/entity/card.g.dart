// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleResponse _$PeopleResponseFromJson(Map<String, dynamic> json) {
  return PeopleResponse(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'] as String,
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : PeopleDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PeopleResponseToJson(PeopleResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

PeopleDto _$PeopleDtoFromJson(Map<String, dynamic> json) {
  return PeopleDto(
    name: json['name'] as String,
    height: json['height'] as String,
    mass: json['mass'] as String,
    hairColor: json['hairColor'] as String,
    skinColor: json['skinColor'] as String,
    eyeColor: json['eyeColor'] as String,
    birthYear: json['birthYear'] as String,
    gender: json['gender'] as String,
    homeworld: json['homeworld'] as String,
    films: (json['films'] as List)?.map((e) => e as String)?.toList(),
    species: (json['species'] as List)?.map((e) => e as String)?.toList(),
    vehicles: (json['vehicles'] as List)?.map((e) => e as String)?.toList(),
    starships: (json['starships'] as List)?.map((e) => e as String)?.toList(),
    created: json['created'] as String,
    edited: json['edited'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$PeopleDtoToJson(PeopleDto instance) => <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hairColor': instance.hairColor,
      'skinColor': instance.skinColor,
      'eyeColor': instance.eyeColor,
      'birthYear': instance.birthYear,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
