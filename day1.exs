
input = File.read!('day1.txt') |>
    String.split(["\n"]) |>
    Enum.map(fn n -> Integer.parse(n) |> elem(0) end)

  (for v <- input, u <- input, v != u, do: {v, u, v + u, v*u}) |>
    Enum.filter(fn t -> elem(t, 2) == 2020 end)


  (for v <- input, u <- input, w <- input, do: {v, u, w}) |>
    Enum.filter(fn t -> elem(t, 0) == 2020 end)
