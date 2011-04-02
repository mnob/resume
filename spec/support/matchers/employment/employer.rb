module EmployerMatcher
  class Matcher
    def initialize(employer)
      @employer = employer
    end
  
    def matches?(matte)
      matte.employments.any? { |e| e.company_name == @employer }
    end
  
    def failure_message
      %{Technically I was an undercover spy, so it "never happened".}
    end
  
    def description
      "have been employed by #{@employer}"
    end
  end

  def have_been_employed_by(employer)
    Matcher.new(employer)
  end
end