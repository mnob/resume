require "support/matchers/employment/employer"
require "support/matchers/employment/title"
require "support/matchers/employment/employed_between"

module EmploymentMatchers
  include EmployerMatcher
  include TitleMatcher
  include EmployedBetweenMatcher
end