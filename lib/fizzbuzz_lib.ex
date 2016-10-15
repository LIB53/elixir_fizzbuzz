defmodule FizzbuzzLib do

  @doc """
  Process numbers from a to b with fizzbuzz logic. Returns a proplist of the
  number as the key, and the fizzbuzz string result
  """
  @spec fizzbuzz(number, number) :: {number, String.t}
  def fizzbuzz(a, b) when is_integer(a) and is_integer(b) do
    for n <- a..b, do: {n, to_fizzbuzz(n)}
  end

  @doc """
  Takes a number and converts it to "fizz" if it is a multiple of 3, "buzz" if
  it is a multiple of 5, "fizzbuzz" if it is a multiple of 3 and also 5, or the
  number as a string
  """
  @spec to_fizzbuzz(number) :: String.t
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
