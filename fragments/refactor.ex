#!/usr/bin/env elixir

def filter_values(%{} = map, filter_params) do
  Enum.into map, %{}, fn {k, v} -> 
    if is_binary(k) and String.contains?(k, filter_params) do
      {k, "[FILTERED]"}
    else
      {k, v}
    end
  end
end
