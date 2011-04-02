require File.dirname(__FILE__) + '/../spec_helper'

describe Matte do
  subject { Factory.build(:matte) }
  
  it { should have_many(:talents) }
  it { should have_one(:education) }
  it { should have_many(:employments) }
  
  describe "talents" do
    it { should know(:ruby) }
    it { should know(:rails) }
    it { should know(:python) }
    it { should know(:javascript) }
    it { should know(:html) }
    it { should know(:css) }
    it { should know(:php) }
    it { should know(:postgresql) }
  end
  
  describe "education" do
    it { should have_attended("Pennsylvania College of Technology") }
    it { should have_earned("Bachelors of Science") }
    it { should have_studied("Web & Application Development") }
    it { should have_graduated(Time.new(2008, 12)) }
  end
  
  describe "employment" do
    describe "AWeber Communications, Inc." do
      it { should have_been_employed_by("AWeber Communications, Inc.") }
      it { should have_been_a("Web Developer") }
      it { should have_been_employed_between("March 2009", "Present") }
    end
    
    describe "JSCSpeed" do
      it { should have_been_employed_by("JSCSpeed") }
      it { should have_been_a("Web Development Intern") }
      it { should have_been_employed_between("May 2008", "August 2008") }
    end
    
    describe "Freelance" do
      it { should have_been_employed_by("Matte Noble Consulting") }
      it { should have_been_a("Freelance Consultant") }
      it { should have_been_employed_between("June 2006", "Present") }
    end
  end
end