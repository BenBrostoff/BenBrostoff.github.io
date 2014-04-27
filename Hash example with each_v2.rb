hashEx = { :brothers => 8, :sisters => 5, :mom => 1, :dad => 1 }

hashEx.each do |key, value|
  hashEx[key] = value + 3
end

hashEx.class # Hash
hashEx #{:sisters=>8, :dad=>4, :brothers=>11, :mom=>4}
