module TitleMatcher
  class Matcher
    def initialize(title)
      @title = title
    end
  
    def matches?(matte)
      matte.employments.any? { |e| e.title == @title }
    end
  
    def failure_message
      %{I was actually a spy, so technically, I was nothing.}
    end
  
    def description
      "have been a #{@title}"
    end
  end

  def have_been_a(title)
    Matcher.new(title)
  end
end