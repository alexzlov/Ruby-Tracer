# coding: utf-8
###############################################
#                   СФЕРА                     #
###############################################

class Sphere

  attr_accessor :position, :radius, :material

  def initialize(position, radius, material)
    @position  = position
    @radius    = radius
    @material = material
  end

  def is_intersecting?(ray, t)
    distance = @position - ray.position
    b = ray.direction.dot_product(distance)
    d = b * b - distance.dot_product(distance) + @radius * @radius

    return Intersection.unsuccessful if (d < 0.0)

    t0 = b - Math.sqrt(d)
    t1 = b + Math.sqrt(d)

    success = false

    if (t0 > 0.1) && (t0 < t)
      t = t0
      success = true
    end

    if (t1 > 0.1) && (t1 < t)
      t = t1
      success = true
    end

    Intersection.new(t, success)
  end

end