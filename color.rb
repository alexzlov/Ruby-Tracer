# coding: utf-8
require 'matrix'
###############################################
#                    ЦВЕТ                     #
###############################################

class Color < Vector

  def red;   self[0]; end
  def green; self[1]; end
  def blue;  self[2]; end

  def red=(n)
    self[0] = [n, 1.0].min
  end

  def green=(n)
    self[1] = [n, 1.0].min
  end

  def blue=(n)
    self[2] = [n, 1.0].min
  end

end