module TalentMatchers
  class KnowTalent
    def initialize(talent)
      @talent = talent
    end
  
    def matches?(matte)
      matte.talents.any? { |t| t.name == @talent.to_s }
    end
  
    def failure_message
      "Apparently I've forgotten what #{@talent} is."
    end
  
    def description
      "know #{@talent}"
    end
  end

  def know(talent)
    KnowTalent.new(talent)
  end
end