Factory.define(:matte) do |f|
  f.address       { "253 Cambridge Ln, Newtown PA, 18940" }
  f.phone_number  { "267-614-3045" }
  f.email         { "me@mattenoble.com" }
  f.url           { "http://github.com/mnoble" }
  f.education     { |e| e.association(:education) }
  
  f.employments do
    [:aweber, :jscspeed, :freelance].map do |employer|
      Factory.build(employer)
    end
  end
  
  f.talents do
    %w{ruby rails python javascript html css php postgresql}.map do |t|
      Factory.build(:talent, :name => t)
    end
  end
end