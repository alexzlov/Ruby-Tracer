# coding: utf-8
###############################################
#                    СЦЕНА                    #
###############################################

class Scene

  attr_accessor :objects, :lights, :camera, :plane

  def initialize(objects, lights, camera, plane)
    @objects = objects
    @lights  = lights
    @camera  = camera
    @plane   = plane
  end

end