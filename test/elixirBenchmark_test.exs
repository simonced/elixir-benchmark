defmodule ElixirBenchmarkTest do
  use ExUnit.Case
  doctest ElixirBenchmark

  
  test "getting start time" do
    assert ElixirBenchmark.start > 0
  end

  
  test "getting stop time" do
    assert ElixirBenchmark.stop > 0
  end

  
  test "getting a time difference" do
	start = ElixirBenchmark.start
	:timer.sleep(1000) # sleep 1sec
	stop = ElixirBenchmark.stop
	assert stop > start
  end

  
  test "checking time difference" do
	start = ElixirBenchmark.start
	:timer.sleep(1000) # sleep 1sec
	stop = ElixirBenchmark.stop
	assert ElixirBenchmark.getMs(start, stop) == 1000
  end

  
end
