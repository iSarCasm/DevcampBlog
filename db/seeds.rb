begin
  10.times do |i|
    Blog.create!(
      title: "My Blog Post ##{i}",
      body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"
    )
  end
  puts "Successfully created 10 blog posts"
rescue e
  puts "Failed to create blogs: #{e}"
end

begin
  5.times do |s|
    Skill.create!(
      title: "Rails ##{s}",
      percent_utilized: s*5
    )
  end
  puts "Successfully created 5 skills."
rescue e
  puts "Failed to create skills: #{e}"
end

begin
  9.times do |p|
    Portfolio.create!(
      title: "Portfolio title ##{p}",
      subtitle: "A very hard work!",
      body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter.",
      main_image: "http://placekitten.com/g/800/200",
      thumb_image: "http://placekitten.com/g/350/200"
    )
  end
  puts "Successfully created 9 portfolios"
rescue Exception => e
  puts "Failed to create portfolios: #{e}"
end
