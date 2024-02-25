# Library Smart Contract

The `Library` smart contract manages a collection of publications, allowing users to add new publications and retrieve information about existing ones.

## Features

- **Add Publication**: Add new publications to the library with their title, author, and unique ID.
- **Retrieve Publication Information**: Retrieve information about a publication using its ID.

## Getting Started

### Deploying the Smart Contract

1. Deploy the `Library` smart contract to your chosen blockchain environment. Ensure that you have the necessary permissions and resources to deploy smart contracts.

2. Make a note of the contract address (`0x05` in this example) for use in your transaction and script code.

### Transaction: Adding a Publication

The transaction code allows you to add a new publication to the library.

```cadence
transaction(title: String, author: String, id: Int) {
  prepare(signer: AuthAccount) {}

  execute {
    Library.addPublication(title: title, author: author, id: id)
    log("Book added successfully!")
  }
}
```

- **title**: The title of the publication.
- **author**: The author of the publication.
- **id**: The unique identifier for the publication.

### Script: Retrieving Publication Information

The script code enables you to retrieve information about a publication using its ID.

```cadence
pub fun main(publicationId: Int): Library.Publication? {
  return Library.publications[publicationId]
}
```

- **publicationId**: The ID of the publication to retrieve.

## Usage

1. **Adding a Publication**:
   - Execute the provided transaction code, providing the title, author, and ID of the publication you want to add.

2. **Retrieving Publication Information**:
   - Use the provided script code to retrieve information about a publication by providing its ID.

## Executing program

For executing the program firstly we will Copy and Paste the code in online Flow Playground, always remember to paste transaction and script code also, then we will input the data using Transaction code and then we will execute the Script to get the output.