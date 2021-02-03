import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/core/value_objects.dart';
import 'package:online_learning/domain/notes/note.dart';
import 'package:online_learning/domain/notes/todo_item.dart';
import 'package:online_learning/domain/notes/value/value_objects.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
abstract class NoteDto implements _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    @JsonKey(ignore: true) String id,
    @required String body,
    @required int color,
    @required List<TodoItemDto> todos,
  }) = _NoteDto;

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id.getOrCrash(),
      body: note.body.getOrCrash(),
      color: note.color.getOrCrash().value,
      todos: note.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDto.fromDomain(todoItem),
          )
          .asList(),
    );
  }

  Note toDomain() {
    return Note(
      id: UniqueId.fromUniqueString(id),
      body: NoteBody(body),
      color: NoteColor(Color(color)),
      todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);

  factory NoteDto.fromFirestore(DocumentSnapshot doc) {
    return NoteDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  const TodoItemDto._();

  // we unwrap ValueObjects to their basic values so they can be stored in the DB
  const factory TodoItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getOrCrash(),
      name: todoItem.name.getOrCrash(),
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
