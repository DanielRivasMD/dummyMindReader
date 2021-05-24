################################################################################

module dummyMindReader

################################################################################

#  imports
begin
  using CairoMakie, AbstractPlotting # plotting packages
  using CSV, DataFrames              # file manipulation
  using ArgParse                     # arg parser
end

################################################################################

export shArgParser
export mindReader

################################################################################

#  no documentation
function shArgParser(args)
  #  minimal argument parsing
  s = ArgParseSettings(description = "dummy mind reader")
  @add_arg_table! s begin
      "--file", "-f"
        arg_type = String
        required = true
        help = "csv file to read"
      "--output", "-o"
        arg_type = String
        required = false
        help = "output svg file"
  end
  parsed_args = parse_args(s)
  return parsed_args
end

function mindReader(file, output)

  #  read file
  df = CSV.File(file, header = false) |> DataFrame

  #  plot
  scene = barplot(df[:, 2], color = :red, strokecolor = :black, strokewidth = 1)

  #  save plot
  save(output, scene, pt_per_unit = 0.5)

end

################################################################################

end

################################################################################
