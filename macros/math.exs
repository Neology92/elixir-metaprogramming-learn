defmodule Math do
  defmacro say({:+, _, [lhv, rhv]}) do
    quote do
      lhv = unquote(lhv)
      rhv = unquote(rhv)
      result = lhv + rhv
      IO.puts("#{lhv} plus #{rhv} is #{result}")
      result
    end
  end

  defmacro say({:*, _, [lhv, rhv]}) do
    quote do
      lhv = unquote(lhv)
      rhv = unquote(rhv)
      result = lhv * rhv
      IO.puts("#{lhv} times #{rhv} is #{result}")
      result
    end
  end
end
