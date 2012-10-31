require "redcarpet/render_strip"

module Redcarpet
  module Render

    class RefinedStripper < StripDown

      [:block_code, :block_quote, :block_html, :header, :paragraph].each do |method|
        define_method method do |*args|
          "\n#{args.first}\n"
        end
      end

      def list_item *args
        "    - #{args.first}"
      end

      def link(link, title, content)
        "#{content}: #{link}"
      end

    end

  end
end
