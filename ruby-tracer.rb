# -*- coding: utf-8 -*-
require 'rubygems'

require_relative 'color'
require_relative 'tracer'
require_relative 'helpers'

Dir["./physics/*.rb"].each {|file| require file}
Dir["./geometry/*.rb"].each {|file| require file }

# Размер изображения
width  = 500
height = 500

sphere_materials = [
  Material.new(Color[0.9, 0.0, 1.0], 0.5, Color[1.0, 1.0, 1.0], 60),
  Material.new(Color[0.0, 0.4, 0.6], 0.5, Color[1.0, 1.0, 1.0], 60),
  Material.new(Color[1.0, 1.0, 1.0], 0.8, Color[1.0, 1.0, 1.0], 60),
  Material.new(Color[0.3, 1.0, 0.0], 0.2, Color[1.0, 1.0, 1.0], 60),
  Material.new(Color[0.2, 0.8, 0.5], 0.6, Color[0.5, 0.0, 0.5], 40),
]

# Непосредственно объекты в сцене
sphere_objects = [
  Sphere.new(Vector[ 100.0,  100.0, 0.0], 100.0, sphere_materials[0]),
  Sphere.new(Vector[-100.0,  100.0, 0.0],  90.0, sphere_materials[1]),
  Sphere.new(Vector[-100.0, -100.0, 0.0],  70.0, sphere_materials[2]),
  Sphere.new(Vector[ 100.0, -100.0, 0.0], 120.0, sphere_materials[3]),
  Sphere.new(Vector[ 30.0,    30.0, 0.0],  60.0, sphere_materials[4]),
]

# Источники освещения
light_sources = [
  Light.new(Vector[ 500.0, 500.0, 500.0], Color[1.0, 0.0, 1.0]),
  Light.new(Vector[-500.0, 500.0, 500.0], Color[0.0, 1.0, 1.0]),
]

shaders = [
  Lambert.new,
]

camera = Vector[0.0, 0.0, 500.0]
image_plane = 100.0

scene = Scene.new(sphere_objects, light_sources, camera, image_plane)
tracer = Tracer.new
image = ImgMagick.new(width, height)

tracer.trace(scene, image, shaders)

image.write('out.png')
