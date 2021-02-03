import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/core/failures.dart';
import 'package:online_learning/domain/core/value_objects.dart';
import 'package:online_learning/domain/notes/value/value_objects.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    @required UniqueId id,
    @required TodoName name,
    // we can't validate a bool so we don't wrap this inside a value object
    @required bool done,
  }) = _TodoItem;

  // for initial state of the app where there will be no todos
  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        name: TodoName(''),
        done: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
