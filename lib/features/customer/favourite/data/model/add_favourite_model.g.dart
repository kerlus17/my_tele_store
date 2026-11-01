// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favourite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddFavouriteModelAdapter extends TypeAdapter<AddFavouriteModel> {
  @override
  final typeId = 1;

  @override
  AddFavouriteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddFavouriteModel(
      title: fields[0] as String,
      image: fields[1] as String,
      id: fields[2] as String,
      price: fields[3] as String,
      categoryName: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AddFavouriteModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.categoryName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddFavouriteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
