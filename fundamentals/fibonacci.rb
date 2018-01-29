# Inefficient recursive
def recursive_fib(n)
  return 1 if n == 1
  return 1 if n == 2
  recursive_fib(n-1) + recursive_fib(n-2)
end

# Memo-ized fib
@cache = {}
def memoized_fib(n)
  return answer = 1 if n == 1
  return answer = 1 if n == 2
  if @cache[n]
    return @cache[n]
  else
  answer = memoized_fib(n-1) + memoized_fib(n-2)
  @cache[n] = answer
  return answer
  end
end

# Iterative fib
def iterative_fib(n)
  return 1 if n == 1
  return 1 if n == 2
  last, current = 1,1
  (n-2).times do
    last, current = current, current + last
  end
  current
end
