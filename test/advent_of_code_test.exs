defmodule AdventOfCodeTest do
  use ExUnit.Case

  # I got sick of re-writing the same block over and over again.
  # why not let a macro write tests for me.
  defmacro aocautotest(input, tests) do
    quote do
      Enum.each(unquote(tests), fn {f, a} ->
        assert f.(unquote(input)) == a
      end)
    end
  end

  # for copy/paste easiness
  #   test "2022decXX" do
  #     aocautotest(
  #       AdventOfCode.read_file("decXX.txt"),
  #       [
  #         {&AdventOfCode.DecXX.first/1, 1715},
  #         {&AdventOfCode.DecXX.second/1, 1739}
  #       ]
  #     )
  #   end

    test "2022dec01" do
      aocautotest(
        AdventOfCode.raw_read_file("dec01.txt"),
        [
          {&AdventOfCode.Dec01.first/1, 72718},
          {&AdventOfCode.Dec01.second/1, 213089}
        ]
      )
    end

    test "2022dec02" do
      aocautotest(
        AdventOfCode.read_file("dec02.txt"),
        [
          {&AdventOfCode.Dec02.first/1, 15337},
          {&AdventOfCode.Dec02.second/1, 11696}
        ]
      )
    end

    test "2022dec03" do
      aocautotest(
        AdventOfCode.read_file("dec03.txt"),
        [
          {&AdventOfCode.Dec03.first/1, 7785},
          {&AdventOfCode.Dec03.second/1, 2633}
        ]
      )
    end
end
