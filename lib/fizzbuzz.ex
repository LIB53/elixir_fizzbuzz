defmodule Fizzbuzz do

  @doc """
  Runs the fizzbuzz program from 1 to 100, then prints the result
  """
  def start do
    for {arg, result} <- FizzbuzzLib.fizzbuzz(1, 100),
      do: IO.puts Integer.to_string(arg) <> ": " <> result
    :ok
  end
end
