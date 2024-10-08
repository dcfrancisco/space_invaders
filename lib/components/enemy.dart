import 'package:flame/components.dart';

class Enemy extends SpriteComponent {
  late Vector2 _velocity;

  Enemy({
    required Vector2 position,
    required Vector2 size,
    required Vector2 velocity,
  }) : super(
          position: position,
          size: size,
          anchor: Anchor.center,
        ) {
    _velocity = velocity;
  }

  Vector2 get velocity => _velocity;

  set velocity(Vector2 newVelocity) {
    _velocity = newVelocity;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load('enemy.png');
  }

  @override
  void update(double dt) {
    super.update(dt);
    position += _velocity * dt;
  }
}
