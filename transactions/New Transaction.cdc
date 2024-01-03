import firstContract from 0x05

transaction(title: String, journal: String, issue: UInt64, volume: UInt64) {
    prepare (signer: AuthAccount) {
    }
    execute {
        firstContract.addBook(title: title, journal: journal, issue: issue, volume: volume)
        log("Book Added Successfully")
    }

}