#!/usr/bin/ruby
require 'selenium'
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--ignore-certificate-errors')
options.add_argument('--disable-popup-blocking')
options.add_argument('--disable-translate')
driver = Selenium::WebDriver.for :chrome, options: options


module HIGHCHARTS_SPEC_HELPER
  def place_point
    js = "// Some JS to place the point"
    driver.execute_script(js)
  end
  def highlight_line
    js = "// Some JS to place the point"
    driver.execute_script(js)
  end
  def click_point(path)
    point = driver.find_element(:xpath, path)
    point.click
  end
  def get_legend(chart_div_id = nil)
    if chart_div
      driver.find_elements(:xpath, "//*[@id='chart_div_id']/[@class='legends_class']")
    else
      driver.find_elements(:xpath, "//*[@class='legends_class']")
    end
  end
  def get_highchart
    # TODO - method for getting a highcharts data
  end
  def get_histographs
    # TODO - method for getting histographs (bar charts)
  end
  def get_tooltip
    # TODO - method to get qtips
  end
end
