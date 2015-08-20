# coding: utf-8
###############################################
#                 ЛУЧ СВЕТА                   #
###############################################

class Ray

  attr_accessor :position, :direction

  def x; @position.x; end
  def y; @position.y; end
  def z; @position.z; end

  def initialize(pos, dir)
    @position  = pos
    @direction = dir
  end

end