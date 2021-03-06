# require File.expand_path(File.join(File.dirname(__FILE__), '../../../../config/environment.rb'))
require 'action_controller/railtie'
require 'action_controller/test_case'
require 'widgets'

def assert_html expected, actual
    expected = clean_html(expected)
    actual = clean_html(actual)
    assert_equal expected, actual
end

def clean_html(html_string)
  return html_string.strip.gsub(/[\n\r]/, '').gsub(/>\s+</, '><')
end

