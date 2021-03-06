class Library
  # attr_accessor :array
  def initialize(books)
    @books = books
  end

  def get_book()
    for book in @books
      return book
    end
  end

  def get_book_title_details(name)
    for book in @books
      if book[:title] == name
      return book
      end
    end
  end

  def get_book_title_gives_rental_details(name)
    for book in @books
      if book[:title] == name
      return book[:rental_details]
      end
    end
  end

def add_book(name)
  @books.push(name)
end

def change_rental_details(book_name,student_name,due_date)
  for book in @books
    if book[:title] == book_name
  book[:rental_details][:student_name] = student_name
  book[:rental_details][:due_date] = due_date
    end
  end
end



end
