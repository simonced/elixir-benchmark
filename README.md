# ElixirBenchmark

Simple benchmark tool for console applications.

It calculates the time difference between a starting and an ending time in ms.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixirBenchmark` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:elixirBenchmark, github: "simonced/elixir-benchmark", app: false}]
end
```

## Sample

```elixir
start = Elixirbenchmark.start()

# ... some code...

end = Elixirbenchmark.stop()

Elixirbenchmark.formatMs( start, end )
|> IO.puts
```