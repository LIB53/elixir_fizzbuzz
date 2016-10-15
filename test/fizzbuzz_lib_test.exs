defmodule FizzbuzzLibTest do
  use ExUnit.Case
  doctest FizzbuzzLib

  test "fizzbuzz" do
    results = FizzbuzzLib.fizzbuzz 1, 100
    assert List.keyfind(results, 1, 0) === {1, "1"}
    assert List.keyfind(results, 3, 0) === {3, "fizz"}
    assert List.keyfind(results, 5, 0) === {5, "buzz"}
    assert List.keyfind(results, 100, 0) === {100, "buzz"}
    assert List.keyfind(results, 15, 0) === {15, "fizzbuzz"}
  end

  test "to_fizzbuzz_3" do
    powers_of_3 = [3, 9, 27, 81]
    for m <- powers_of_3, do: assert FizzbuzzLib.to_fizzbuzz(m) === "fizz"
  end

  test "to_fizzbuzz_5" do
    powers_of_5 = [5, 25]
    for m <- powers_of_5, do: assert FizzbuzzLib.to_fizzbuzz(m) === "buzz"
  end

  test "to_fizzbuzz_15" do
    multiples_of_15 = for n <- 1..7, do: n * 15
    for m <- multiples_of_15,
      do: assert FizzbuzzLib.to_fizzbuzz(m) === "fizzbuzz"
  end
  
  test "to_fizzbuzz_n" do
    multiple_of_3? = fn(n) -> rem(n, 3) == 0 end
    multiple_of_5? = fn(n) -> rem(n, 5) == 0 end
    not_multiples_of_3_or_5 =
      for n <- 1..100, not multiple_of_3?.(n), not multiple_of_5?.(n), do: n

    for m <- not_multiples_of_3_or_5,
      do: assert FizzbuzzLib.to_fizzbuzz(m) === Integer.to_string(m)
  end
end
