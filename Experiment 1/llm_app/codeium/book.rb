# frozen_string_literal: true

class Book
  class Book
    attr_accessor :title, :author, :genre

    def initialize(title, author, genre)
      @title = title
      @author = author
      @genre = genre
    end

    def to_s
      "#{@title} by #{@author} (Genre: #{@genre})"
    end
  end
end
