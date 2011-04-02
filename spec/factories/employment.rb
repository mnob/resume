Factory.define(:aweber, :class => :Employment) do |f|
  f.title         "Web Developer"
  f.company_name  "AWeber Communications, Inc."
  f.date_started  Time.new(2009, 3)
  f.date_ended    nil
  f.description   <<-DESC
    Developed a mix of CakePHP, Python and pure JavaScript
    applications related to email marketing. Worked with a team to
    develop for and support over 100,000 customers and to send over 50
    million emails per day, on average. Introduced improved pairing,
    testing and code review techniques via tools like GitHub, JSpec and
    general software development best practices.
    DESC
end

Factory.define(:jscspeed, :class => :Employment) do |f|
  f.title         "Web Development Intern"
  f.company_name  "JSCSpeed"
  f.date_started  Time.new(2008, 5)
  f.date_ended    Time.new(2008, 8)
  f.description   <<-DESC
    Managed, maintained and improved automative aftermarket parts
    vendor's ecommerce storefront website. Improved page load times
    and decreased bandwidth by implementing Web-Standards based
    page layouts. Developed a small-scale web application to dynamically
    collect product details form static pages, convert it to acceptible
    XML and integrate it with Google Products. Designed and developed
    interface for organization's business-to-business wholesale web
    application.
    DESC
end

Factory.define(:freelance, :class => :Employment) do |f|
  f.title         "Freelance Consultant"
  f.company_name  "Matte Noble Consulting"
  f.date_started  Time.new(2006, 6)
  f.date_ended    nil
  f.description   <<-DESC
    Designed and developed a multitude of sites and applications for
    various clients in the small business realm. Developed sales order
    and event management application to help local pastry chef organize
    her hectic business. Developed full-feature content management system
    for internet cafe to announce, promote and hold events as well as
    connect with their customers via email marketing. Worked on projects
    simple to complicated, related to design to development and have
    loved every moment of it.
    DESC
end