# frozen_string_literal: true

class Book
  attr_accessor :title, :author, :status

  def initialize(title, author)
    @title = title
    @author = author
    @status = 'available'
  end
end
