defmodule ElixirBenchmark do
  @moduledoc """
  Documentation for ElixirBenchmark.
  """

  @doc """
  ElixirBenchmark.

  ## Examples

  start = Elixirbenchmark.start()
  # ... some code...
  end = Elixirbenchmark.stop()
  Elixirbenchmark.formatMs( start, end ) |> IO.puts
  """
  
  def start do
	# benchmarking start
    System.monotonic_time()
  end


  def stop do
    System.monotonic_time()
  end

  
  def getMs(prev_, next_) do
	System.convert_time_unit(next_ - prev_, :native, :millisecond)
  end


  def formatMs(prev_, next_) do
	"Elapsed time: #{getMs(prev_, next_)}ms"
  end

  
end
