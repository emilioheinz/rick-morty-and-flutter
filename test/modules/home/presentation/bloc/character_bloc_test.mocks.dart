// Mocks generated by Mockito 5.0.10 from annotations
// in rick_morty_and_flutter/test/modules/home/presentation/bloc/character_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rick_morty_and_flutter/shared/error/failures.dart' as _i6;
import 'package:rick_morty_and_flutter/modules/character/domain/entities/character.dart'
    as _i7;
import 'package:rick_morty_and_flutter/modules/character/domain/repositories/character.dart'
    as _i2;
import 'package:rick_morty_and_flutter/modules/character/domain/use_cases/get_characters.dart'
    as _i4;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeCharacterRepository extends _i1.Fake
    implements _i2.CharacterRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {
  @override
  String toString() => super.toString();
}

/// A class which mocks [GetCharacters].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCharacters extends _i1.Mock implements _i4.GetCharacters {
  MockGetCharacters() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.CharacterRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeCharacterRepository()) as _i2.CharacterRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.Character>>> call() =>
      (super.noSuchMethod(Invocation.method(#call, []),
              returnValue:
                  Future<_i3.Either<_i6.Failure, List<_i7.Character>>>.value(
                      _FakeEither<_i6.Failure, List<_i7.Character>>()))
          as _i5.Future<_i3.Either<_i6.Failure, List<_i7.Character>>>);
}
