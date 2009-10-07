module SDocHelpers
  module MarkdownFiles
    def description
      return super unless full_name =~ /\.(md|markdown)$/
      # assuming your path is ROOT/html or ROOT/doc
      path = Dir.pwd + '/../' + full_name
      Markdown.new(File.read(path)).to_html + open_links_in_new_window
    end

    def open_links_in_new_window
      <<-html
<script type="text/javascript">$(function() {
  $('a').each(function() { $(this).attr('target', '_blank') })
})</script>
html
    end
  end
end

begin
  require 'rdiscount'
  RDoc::TopLevel.send :include, SDocHelpers::MarkdownFiles
rescue LoadError
  puts "Markdown support not enabled. Please install RDiscount."
end
