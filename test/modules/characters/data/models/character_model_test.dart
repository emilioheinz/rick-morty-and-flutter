import 'dart:convert';
import "package:flutter_test/flutter_test.dart";
import 'package:rick_morty_and_flutter/modules/character/data/models/character.dart';
import 'package:rick_morty_and_flutter/modules/character/domain/entities/character.dart';
import 'package:rick_morty_and_flutter/modules/character/shared/enums/character_status.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final characterModel = CharacterModel(
    id: 1,
    name: "Teste Name",
    image: "image.png",
    species: "Human",
    status: CharacterStatus.alive,
  );

  final detailedCharacterModel = CharacterModel(
    id: 1,
    name: "Teste Name",
    image: "image.png",
    species: "Human",
    status: CharacterStatus.alive,
    gender: "Male",
    location: "Earth (Replacement Dimension)",
    origin: "Earth (C-137)",
  );

  test("should be a subclass of Character entity", () async {
    expect(characterModel, isA<Character>());
  });

  group("fromJson", () {
    test("should return a valid model", () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("character.json"));

      final result = CharacterModel.fromJson(jsonMap);

      expect(result, characterModel);
    });
  });

  group("detailedFromJson", () {
    test("should return a valid model", () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("character.json"));

      final result = CharacterModel.detailedFromJson(jsonMap);

      expect(result, detailedCharacterModel);
    });
  });

  group("toJson", () {
    test("should return a JSON map containing the proper data", () async {
      final result = characterModel.toJson();

      final expectedMap = {
        "id": 1,
        "name": "Teste Name",
        "image": "image.png",
        "status": "Alive",
        "species": "Human",
        "gender": null,
        "origin": null,
        "location": null
      };

      expect(result, expectedMap);
    });
  });
}
