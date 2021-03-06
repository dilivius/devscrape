require "devscrape/version"

require 'mechanize'

module Scraper

  class Codecademy
    def initialize(*courses, email:, password:)
      @agent = Mechanize.new
      @email = email
      @password = password
      @courses = courses
    end

    def access_site
      @agent.get('https://www.codecademy.com/login')
    end

    def sign_in
      form = @agent.page.forms.first

      form["user[login]"] = @email
      form["user[password]"] = @password

      form.submit
    end

    def get_links
      @agent.page.links_with(href: %r{^/learn/\w+} )
    end

    def filter_links
      @links = @agent.page.links.select { |link| link.href[/learn/]}
    end

    def match_link_to_courses
      course_hash = {}

      @links.each do |link_text|
        @courses.each do |course|

          if (link_text.to_s.include?(course)) && (link_text.to_s =~ /\d+/)
            course_hash[course] = link_text.to_s.scan(/\d+/).last
          end

        end
      end

      course_hash
    end

    def get_course_completion_percentage
      access_site
      sign_in
      get_links
      filter_links
      match_link_to_courses
    end

  end
end
