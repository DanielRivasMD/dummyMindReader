################################################################################

module dummyMindReader

################################################################################

#  imports
begin
  using Plots           # plotting packages
  using CSV, DataFrames # file manipulation
  using ArgParse        # arg parser
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
  p = plot(df[:, 2] .^ 7)

  #  save plot
  savefig(p, output)

end

################################################################################

end

################################################################################
