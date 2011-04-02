module EmployedBetweenMatcher
  class Matcher
    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date   = end_date
    end
    
    def matches?(matte)
      matte.employments.any? do |employment|
        hired = employment.date_started.strftime("%B %Y")
        left  = employment.date_ended.strftime("%B %Y") rescue "Present"
        hired == @start_date and left == @end_date
      end
    end
    
    def failure_message
      %{Maybe I went back to the future and got my years mixed up.}
    end
    
    def description
      "have been employed between #{@start_date} and #{@end_date}"
    end
  end
  
  def have_been_employed_between(start_date, end_date)
    Matcher.new(start_date, end_date)
  end
end