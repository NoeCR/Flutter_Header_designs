import 'package:flutter/material.dart';

class HeaderSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBorderRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(75),
            bottomRight: Radius.circular(75),
          )),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();

    // Properties
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();

    // Draw with the path and the pencil
    path.moveTo(0, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // Not necessary if ise PaintingStyle.fill instead of stroke
    // path.lineTo(0, size.height * 0.40);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: HeaderTriangularPainter(),
      ),
    );
  }
}

class HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();

    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderArrowHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderArrowHeadPainter(),
      ),
    );
  }
}

class _HeaderArrowHeadPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();

    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.5, size.height / 3.5);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvePainter(),
      ),
    );
  }
}

class _HeaderCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();

    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width / 2, size.height / 2, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();

    pencil.color = Color(0xfff78228);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.4, size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.28, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWavesGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavesGradientPainter(),
      ),
    );
  }
}

class _HeaderWavesGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Gradient gradient = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
      Color(0xff6D05E8),
      Color(0xffC012FF),
      Color(0xff6D05FA),
    ], stops: [
      0.2,
      0.5,
      1.0
    ]);

    final Rect rect = Rect.fromCircle(center: Offset(0.0, 55.0), radius: 180);

    final pencil = Paint()..shader = gradient.createShader(rect);

    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.4, size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.28, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
