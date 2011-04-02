module EducationMatchers
  EDUCATION_MATCHERS = {
    :have_attended  => :school,
    :have_earned    => :degree,
    :have_studied   => :title,
    :have_graduated => :date_completed
  }
  
  def method_missing(name, *args)
    if EDUCATION_MATCHERS.include?(name)
      Education.new(name, args.first)
    else
      super
    end
  end
  
  class Education
    def initialize(matcher, expected)
      @matcher   = matcher
      @attribute = EDUCATION_MATCHERS[matcher]
      @expected  = expected
    end
    
    def matches?(matte)
      @actual = matte.education.send(@attribute)
      @actual == @expected
    end
    
    def failure_message
      "Hmm, maybe I partied a little too hard at times.."
    end
    
    def description
      "#{@matcher.to_s.sub('_', ' ')} #{@expected}"
    end
  end
end