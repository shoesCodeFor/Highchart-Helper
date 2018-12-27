# Highchart-Helper
A Ruby Module to help with Highchart testing

It is the hope of this module to be a drop-in for Rspec.  Unfortunately, Selenium does not play nicely with SVG and that is what highcharts are based on.  Because of this writing automated tests for Selenium and Highcharts becomes tricky.  

This is a collection of common methods to find chart elements by injecting Javascript into pages and manipulating Highcharts to allow them to be tested with automation.

To use this with an existing Selenium WebDriver instance you will need to match the variable naming convention in your project.
Example: if you are using the global variable `$driver` to access WebDriver use a search and replace to modify the module to use `$driver` rather than `driver`.
