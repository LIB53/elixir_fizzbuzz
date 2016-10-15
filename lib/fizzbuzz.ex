defmodule Fizzbuzz do
  def start do
    for {arg, result} <- FizzbuzzLib.fizzbuzz(1, 100),
      do: IO.puts Integer.to_string(arg) <> ": " <> result
    :ok
  end
end
