import 'package:flutter/material.dart';
import 'package:flashcard/utils/colors.dart';

class TextStyles {
  /// Size 24 - Dùng cho tiêu đề lớn
  static TextStyle title({Color color = AppColors.primary}) {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color);
  }

  /// Size 20 - Dùng cho tiêu đề nhỏ hoặc section
  static TextStyle subtitle({Color color = AppColors.primary}) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: color);
  }

  /// Size 16 - Dùng cho nội dung chính
  static TextStyle body({Color color = Colors.black87}) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: color);
  }

  /// Size 14 - Dùng cho ghi chú, nội dung phụ
  static TextStyle caption({Color color = Colors.grey}) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: color);
  }
}
