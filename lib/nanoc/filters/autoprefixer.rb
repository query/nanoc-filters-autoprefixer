module Nanoc
  module Filters
    class Autoprefixer < ::Nanoc::Core::Filter
      identifier :autoprefixer

      requires 'autoprefixer-rails'

      def run(content, params={})
        AutoprefixerRails.process(content.dup, params.dup).css
      end
    end
  end
end
