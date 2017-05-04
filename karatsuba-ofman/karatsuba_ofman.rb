module KaratsubaOfman
  def multiplication(u, v, n)
    return u * v if n < 3
    m  = (n/2).ceil
    p  = (u/(10**m)).floor
    q  = u.modulo(10**m)
    r  = (v/(10**m)).floor
    s  = v.modulo(10**m)
    pr = multiplication(p, r, m)
    qs = multiplication(q, s, m)
    y  = multiplication(p + q, r + s, m + 1)
    pr * (10**(2 * m)) + (y - pr - qs) * (10**m) + qs
  end
end
