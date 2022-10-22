

Dir.glob('../../diary/**/*.md').each do |path|
  # read file
  ## subst header -> header_text
  ### parse header_text -> header(array)
  ## read others -> others_text
  ## grouping file(mapping Ymd) -> calendar_map
  ### cicle
  ##
  ## week
  ## month
  ## other_text concat all group
end
