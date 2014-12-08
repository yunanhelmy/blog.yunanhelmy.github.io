module Jekyll
  class RenderMenikBlog < Liquid::Tag

    def initialize(tag_name, data, tokens)
      super
      @data = data
    end

    def render(context)
      return "<a href='http://nyonyahm.wordpress.com' target='_blank'>#{@data}</a>"
    end
  end

  Liquid::Template.register_tag('menik', Jekyll::RenderMenikBlog)
end