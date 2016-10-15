defmodule FizzbuzzLib do

  def fizzbuzz(a, b) when is_integer(a) and is_integer(b) do
    for n <- a..b, do: {n, to_fizzbuzz(n)}
  end


  def to_fizzbuzz(n) when rem(n, 3) == 0 do
    if rem(n, 5) == 0, do: "fizzbuzz", else: "fizz"
  end

  def to_fizzbuzz(n) when rem(n, 5) == 0 do
    "buzz"
  end

  def to_fizzbuzz(n) when is_integer n do
    Integer.to_string(n)
  end
end
