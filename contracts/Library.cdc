pub contract Library {
  pub var publications: {Int: Publication} 
  pub struct Publication { 
    pub let title: String
    pub let author: String
    pub let id: Int

    init(_title: String, _author: String, _id: Int) {
      self.title = _title
      self.author = _author
      self.id = _id
    }
  }
  pub fun addPublication(title: String, author: String, id: Int) { 
    let newPublication = Publication(_title: title, _author: author, _id: id) 
    self.publications[id] = newPublication 
  }
  init() {
    self.publications = {} 
  }
}
