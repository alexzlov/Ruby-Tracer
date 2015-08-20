# coding: utf-8
###############################################
#                  ШЕЙДЕРЫ                    #
###############################################

# https://en.wikipedia.org/wiki/Lambertian_reflectance
class Lambert

  def shader(pixel, ray, light_ray, light, intersection_normal, material, coeff)
    lambert = light_ray.direction.dot_product(intersection_normal) * coeff
    pixel.red   += lambert * light.color.red * material.diffuse.red
    pixel.green += lambert * light.color.green * material.diffuse.green
    pixel.blue  += lambert * light.color.blue * material.diffuse.blue
  end

end

# TODO: сделать еще парочку: Blinn или Phong, например