module Jekyll
  class CategoryListTag < Liquid::Tag
    def render(context)
      categories = context.registers[:site].categories
      articles_per_category = categories.inject({}) {|a,(k,v)| a[k] = v.size; a}
      articles_per_category = articles_per_category.sort_by {|k,v| v }.reverse.to_h

      "".tap do |output|
        output << "<ul class='entry-meta inline-list'>"
        articles_per_category.each do |category, size|
          output << "<li><a href='##{category}' class='tag'>"
          output << "#{category} <span>#{size}</span>"
          output << "</a></li>"
        end
        output << "</ul>"
      end
    end
  end
end

Liquid::Template.register_tag('category_list', Jekyll::CategoryListTag)
