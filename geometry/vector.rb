# coding: utf-8
###############################################
#                  ВЕКТОР                     #
###############################################

class Vector

  def dot_product(v)
    Vector.Raise ErrDimensionMismatch if size != v.size
    sum = 0
    size.times do |i|
      sum += self[i] * v[i]
    end
    return sum
  end

  def x; self[0]; end
  def y; self[1]; end
  def z; self[2]; end

  def normalize
    m = Math.sqrt(x*x + y*y + z*z)
    Vector[x/m, y/m, z/m]
  end

end