import Library from 0x05

transaction(title: String, author: String, id: Int) {

  prepare(signer: AuthAccount) {}

  execute {
    Library.addPublication(title: title, author: author, id: id)
    log("Book added successfully!")
  }
}
