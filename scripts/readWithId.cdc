import Library from 0x05

pub fun main(publicationId: Int): Library.Publication? {
  return Library.publications[publicationId]
}
