require "redcarpet/render_strip"

module Redcarpet
  module Render

    class RefinedStripper < StripDown

      [:block_code, :block_quote, :block_html, :header, :list, :list_item, :paragraph].each do |method|
        define_method method do |*args|
          "\n#{args.first}\n"
        end
      end

    end

  end
end
