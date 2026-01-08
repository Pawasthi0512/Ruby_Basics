require_relative '../modules/searchable'

class Item
  include Searchable
  attr_reader :title, :creator, :id, :status, :current_borrower

  def initialize(id, title, creator)
    @id = id
    @title = title
    @creator = creator
    @status = :available
    @current_borrower = nil
  end

  def lend_to(borrower)
    return false if @status != :available
    @current_borrower = borrower
    @status = :lent
    true
  end

  def return_item
    @current_borrower = nil
    @status = :available
    true
  end

  def available?
    @status == :available
  end

  def to_s
    "[#{self.class}] #{@title} by #{@creator} (#{@status})"
  end
end

