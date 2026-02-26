import 'package:flutter/material.dart';

class BasePageModel {
  final int id;
  final String label;
  final IconData icon;

  BasePageModel({required this.label, required this.icon, required this.id});
}