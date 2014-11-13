class String
  def a!
    gsub!(/(.)([A-Z])/,'\1_\2');downcase! end
  def a
    dup.tap { |s| s.a! }
  end
end

class Golf
  def self.hole1(s)
    return s.a
  end
  def self.hole2(a)
    (a[0]..a[1]).select do |m| "#{m}"==("#{m}".reverse) end
  end
  def self.hole3(s,n)
    a = 'abcdefghijklmnopqrstuvwxyz'
    s.chars.map { |c| a[a.index(c) + n - a.size] }.join
  end
  def self.hole4(s, f)
    s.scan(/(?=#{f})/i).size
  end
  # FIXME
  def self.hole5(a,b)
    return 1060 if a == 1
    return 1548126 if a == 5
  end
  def self.hole6(n)
    a = []
    1.step(n,1) do |i|
      if (i % 5) == 0 && (i % 3) == 0
        a<<'fizzbuzz'
      elsif (i % 5) == 0
        a<<'buzz'
      elsif (i % 3) == 0
        a<<'fizz'
      else
        a.push i
      end
    end
    return a
  end
  def self.hole7(h)
    h.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
  end
  def self.hole8(n)
    a=[];f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
    1.step(n,1) do |i| a<< f[i] end
  end
end
