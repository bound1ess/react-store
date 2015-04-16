# Simple book store with React

The components hierarchy:

- BookCategoryList (owns a bunch of BookCategory items)
    - BookCategory (just name)
- FilterableBookCollection (searchable and sortable)
    - SearchBar (for book name)
    - SortBar (ASC/DESC by price, release date, popularity)
    - BookCollection (owns Book items)
        - Book (name, genre (or category), price, views count, brief desc.)
