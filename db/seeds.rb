me = Matte.create(
  :address       => "253 Cambridge Ln, Newtown PA, 18940",
  :phone_number  => "267-614-3045",
  :email         => "me@mattenoble.com",
  :url           => "http://github.com/mnoble"
)

%w{ruby rails python javascript html css php postgresql}.each do |talent|
  Talent.create(:name => talent, :matte_id => me.id)
end

Education.create(
  :degree         => "Bachelor of Science",
  :title          => "Web & Application Development",
  :school         => "Pennsylvania College of Technology",
  :date_completed => Date.parse("2008-12-20"),
  :matte_id       => me.id
)

Employment.create([
  {
    :title        => "Web Developer",
    :company_name => "AWeber Communications, Inc.",
    :date_started => Date.parse("March 2009"),
    :date_ended   => nil,
    :matte_id     => me.id,
    :description  => %(
      Developed a mix of CakePHP, Python and pure JavaScript
      applications related to email marketing. Worked with a team to
      develop for and support over 100,000 customers and to send over 50
      million emails per day, on average. Introduced improved pairing,
      testing and code review techniques via tools like GitHub, JSpec and
      general software development best practices.
    ) },
  {
    :title        => "Web Development Intern",
    :company_name => "JSCSpeed",
    :date_started => Date.parse("May 2008"),
    :date_ended   => Date.parse("August 2008"),
    :matte_id     => me.id,
    :description  => %(
      Managed, maintained and improved automotive aftermarket parts
      vendor's ecommerce storefront website. Improved page load times
      and decreased bandwidth by implementing Web-Standards based
      page layouts. Developed a small-scale web application to dynamically
      collect product details form static pages, convert it to acceptable
      XML and integrated it with Google Products. Designed and developed
      interface for organization's business-to-business wholesale web
      application.
    )
  },
  {
    :title        => "Freelance Consultant",
    :company_name => "Matte Noble Consulting",
    :date_started => Date.parse("June 2006"),
    :date_ended   => nil,
    :matte_id     => me.id,
    :description  => %(
      Designed and developed a multitude of sites and applications for
      various clients in the small business realm. Developed sales order
      and event management application to help local pastry chef organize
      her hectic business. Developed full-feature content management system
      for internet cafe to announce, promote and manage events as well as
      connect with their customers via email marketing. Worked on projects
      simple to complicated, related to design to development and
      loved every moment of it.
    )
  }
])