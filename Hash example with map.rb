hashEx = { :brothers => 8, :sisters => 5, :mom => 1, :dad => 1 }


hashEx.map { |k, v| [k, v+3] }.class # Array 
hashEx.map { |k, v| [k, v+3] }  # [[:sisters, 8], [:dad, 4], [:brothers, 11], [:mom, 4]] 