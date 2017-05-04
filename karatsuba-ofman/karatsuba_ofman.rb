module KaratsubaOfman
  def multiplication(u, v, n)
    if n < 3
      return u * v
    else
      m  = (n/2).ceil
      p  = (u/(10**m)).floor
      q  = u.modulo(10**m)
      r  = (v/(10**m)).floor
      s  = v.modulo(10**m)
      pr = multiplication(p, r, m)
      qs = multiplication(q, s, m)
      y  = multiplication(p + q, r + s, m + 1)
      x  = pr * (10**(2 * m)) + (y - pr - qs) * (10**m) + qs
      return x
    end
  end
end
