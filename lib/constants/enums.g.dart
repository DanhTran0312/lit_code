// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DifficultyAdapter extends TypeAdapter<Difficulty> {
  @override
  final int typeId = 3;

  @override
  Difficulty read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Difficulty.easy;
      case 1:
        return Difficulty.medium;
      case 2:
        return Difficulty.hard;
      default:
        return Difficulty.easy;
    }
  }

  @override
  void write(BinaryWriter writer, Difficulty obj) {
    switch (obj) {
      case Difficulty.easy:
        writer.writeByte(0);
        break;
      case Difficulty.medium:
        writer.writeByte(1);
        break;
      case Difficulty.hard:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DifficultyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final int typeId = 4;

  @override
  Category read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Category.arrayAndHashing;
      case 1:
        return Category.twoPointers;
      case 2:
        return Category.slidingWindow;
      case 3:
        return Category.stack;
      case 4:
        return Category.binarySearch;
      case 5:
        return Category.trees;
      case 6:
        return Category.tries;
      case 7:
        return Category.linkedList;
      case 8:
        return Category.heapAndPriorityQueue;
      case 9:
        return Category.backtracking;
      case 10:
        return Category.graphs;
      case 11:
        return Category.advancedGraphs;
      case 12:
        return Category.dynamicProgramming;
      case 13:
        return Category.advancedDynamicProgramming;
      case 14:
        return Category.greedy;
      case 15:
        return Category.intervals;
      case 16:
        return Category.bitManipulation;
      case 17:
        return Category.mathAndGeometry;
      default:
        return Category.arrayAndHashing;
    }
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    switch (obj) {
      case Category.arrayAndHashing:
        writer.writeByte(0);
        break;
      case Category.twoPointers:
        writer.writeByte(1);
        break;
      case Category.slidingWindow:
        writer.writeByte(2);
        break;
      case Category.stack:
        writer.writeByte(3);
        break;
      case Category.binarySearch:
        writer.writeByte(4);
        break;
      case Category.trees:
        writer.writeByte(5);
        break;
      case Category.tries:
        writer.writeByte(6);
        break;
      case Category.linkedList:
        writer.writeByte(7);
        break;
      case Category.heapAndPriorityQueue:
        writer.writeByte(8);
        break;
      case Category.backtracking:
        writer.writeByte(9);
        break;
      case Category.graphs:
        writer.writeByte(10);
        break;
      case Category.advancedGraphs:
        writer.writeByte(11);
        break;
      case Category.dynamicProgramming:
        writer.writeByte(12);
        break;
      case Category.advancedDynamicProgramming:
        writer.writeByte(13);
        break;
      case Category.greedy:
        writer.writeByte(14);
        break;
      case Category.intervals:
        writer.writeByte(15);
        break;
      case Category.bitManipulation:
        writer.writeByte(16);
        break;
      case Category.mathAndGeometry:
        writer.writeByte(17);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
