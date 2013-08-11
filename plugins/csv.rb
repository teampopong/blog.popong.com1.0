#
# Author: Cheol Kang <kang@cheol.net>
# Outputs a string for a given csv text as a table
#
#   {% csv table table-hover %}
#   name,gender
#   lucy,female
#   cheol,male
#   {% endcsv %}
#   ...
#   <table class="table table-hover">
#     <tbody>
#       <tr>
#         <th>name</th>
#         <th>gender</th>
#       </tr>
#       <tr>
#         <td>cheol</td>
#         <td>male</td>
#       </tr>
#       <tr>
#         <td>lucy</td>
#         <td>female</td>
#       </tr>
#     </tbody>
#   </table>
#
require 'cgi'

module Jekyll

  class CsvTable < Liquid::Block

    def initialize(tag_name, text, tokens)
      @classes = text
      super
    end

    def render(context)
      escaped = CGI.escapeHTML super.lstrip.rstrip
      header, body = escaped.split(/\n/, 2)
      "<table #{"class=\"#{@classes.lstrip.rstrip}\"" if @classes}>"\
      "<tr><th>#{header.gsub(/,/, '</th><th>')}</th></tr>"\
      "<tr><td>#{body.gsub(/\n/, '</td></tr><tr><td>').gsub(/,/, '</td><td>')}</td></tr>"\
      "</table>"
    end
  end
end

Liquid::Template.register_tag('csv', Jekyll::CsvTable)
