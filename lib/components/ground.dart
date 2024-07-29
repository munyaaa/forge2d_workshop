import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:forge2d_game/components/body_component_with_user_data.dart';

const groundSize = 7.0;

// BodyComponent: Component dari Forge2D supaya kita bisa menggunakan physics
class Ground extends BodyComponentWithUserData {
  Ground(Vector2 position, Sprite sprite)
      : super(
          // renderBody: render fixture atau tidak
          renderBody: false,
          // BodyDef: ngedefine apa yang body component punya
          bodyDef: BodyDef()
            ..position = position
            ..type = BodyType.static,
          // static: diam dan tidak terpengaruh gravitasi
          // dynamic: bisa bergerak dan berpengaruh gravitasi
          // kinematic: bisa bergerak dan tidak terpengaruh gravitasi

          fixtureDefs: [
            // FitureDef: ngedefine physics dari shape-nya
            FixtureDef(
              PolygonShape()..setAsBoxXY(groundSize / 2, groundSize / 2),
              // friction: gesekan, semakin besar makin lebih susah untuk bergeser
              // artinya ketika bertemu benda lain, dia bakalan melambat lebih cepat.
              friction: 0.3,
            )
          ],
          children: [
            SpriteComponent(
              anchor: Anchor.center,
              sprite: sprite,
              size: Vector2.all(groundSize),
              position: Vector2(0, 0),
            ),
          ],
        );
}
