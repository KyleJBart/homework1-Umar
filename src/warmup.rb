
def fib(n)
    return [] if n == 0
    return [0] if n == 1
  
    res = [0, 1]
    while res.length < n
      res << res[-1] + res[-2]
    end
    res
end

def isPalindrome(n)
    str = n.to_s
    str == str.reverse
end

def nthmax(n, a)
    res = a.sort.reverse
    res[n]
end

def freq(s)
    return "" if s.empty?
    counts = Hash.new(0)
    s.each_char { |char| counts[char] += 1 }
    counts.max_by { |char, count| count }[0]
end

def
    zipHash(arr1, arr2)
    return nil unless arr1.length == arr2.length
    Hash[arr1.zip(arr2)]
end

def hashToArray(hash)
    hash.to_a
end
