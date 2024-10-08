import 'package:flame/components.dart';

class Title extends SpriteComponent {
  Title() : super();

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('spaceinvaderspritesheet.png');
  }
}
