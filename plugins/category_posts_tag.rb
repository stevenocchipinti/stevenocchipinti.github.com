module Jekyll
  class CategoryPostsTag < Liquid::Tag
    def render(context)
      categories = context.registers[:site].categories
      categories = categories.sort_by {|k,v| k.downcase }.to_h

      "".tap do |output|
        categories.each do |category, posts|
          output << "<article id='#{category}' class='category'>"
          output << "<h2>#{category.split.map(&:capitalize).join(" ")}</h2>"
          posts.each do |post|
            output << "<h3><a href='#{post.url}' title='#{post.data['title']}'>"
            output << post.data['title']
            output << "</a></h3>"
          end
          output << "</article>"
        end
      end
    end
  end
end

Liquid::Template.register_tag('category_posts', Jekyll::CategoryPostsTag)
