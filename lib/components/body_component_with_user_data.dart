import 'package:flame_forge2d/flame_forge2d.dart';

class BodyComponentWithUserData extends BodyComponent {
  BodyComponentWithUserData({
    super.key,
    super.bodyDef,
    super.children,
    super.fixtureDefs,
    super.paint,
    super.priority,
    super.renderBody,
  });

  @override
  Body createBody() {
    // User data disimpan supaya bisa dibaca oleh component lain
    // (Lihat di class Enemy, method beginContact)
    final body = world.createBody(super.bodyDef!)..userData = this;
    fixtureDefs?.forEach(body.createFixture);
    return body;
  }
}
