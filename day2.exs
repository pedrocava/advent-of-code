
raw_input2 = File.read!("day2.txt") |>
  String.split("\n")

  Enum.map(raw_input2,
    fn str -> String.split(str, ["-", ":", " "]) |> List.to_tuple() end) |>
  Enum.map(fn t ->
    {
      t |> elem(0) |> Integer.parse() |> elem(0),
      t |> elem(1) |> Integer.parse() |> elem(0),
      elem(t, 2),
      elem(t, 4),
      String.split(elem(t, 4), "") |>
        Enum.filter(fn x -> x == elem(t, 2) end) |>
        length()
    }
    end) |>
    Enum.filter(fn t -> elem(t, 4) >= elem(t, 0)
      and elem(t, 4) <= elem(t, 1) end) |>
    length()
