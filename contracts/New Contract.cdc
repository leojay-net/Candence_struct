pub contract firstContract {
    pub var books: {String: Book}

    pub struct Book {
        pub let title: String
        pub let journal: String
        pub let issue: UInt64
        pub let volume: UInt64


        init(_title: String, _journal: String, _issue: UInt64, _volume: UInt64) {
            self.title = _title
            self.journal = _journal
            self.issue = _issue
            self.volume = _volume
        }
    }

    pub fun addBook(title: String, journal: String, issue:UInt64, volume: UInt64) {
        var newBook = Book(_title: title, _journal: journal, _issue: issue, _volume: volume)
        self.books[title] = newBook
    }
    init() {
        self.books = {}
    }
}