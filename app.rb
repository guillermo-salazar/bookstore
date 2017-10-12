configure :development do
  Bullet.enable = true
  Bullet.bullet_logger = true
  use Bullet::Rack
end
