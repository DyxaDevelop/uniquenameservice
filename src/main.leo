import credits.leo;

program uniquenameservice.aleo{

  // Struct for symbol representation, storing the symbol of the NFT collection as bits.
struct SymbolRepresentation {
    bits: u128 // The symbol of the NFT collection encoded in a 128-bit format.
}

  
   // Record to represent an NFT within the UniqueNameService.
record UniqueAsset {
    private proprietor: address, // The owner of the NFT.
    private identifier: TokenId, // The unique identifier for the NFT.
    private version: scalar,     // The edition number of the NFT, 0 for unique editions.
    private label: Name,         // The name associated with the NFT.
    private expiry: u64,         // The timestamp when the NFT is considered expired.
}

  
// Struct for uniquely identifying an NFT using two 128-bit numbers.
struct UniqueIdentifier {
    upper_bits: u128, // The first 128-bit segment of the unique identifier.
    lower_bits: u128, // The second 128-bit segment of the unique identifier.
}

// Struct for the base URI of the NFT collection, represented as a series of 128-bit segments.
struct CollectionBaseURI {
    segment_one: u128, // The first segment of the URI, encoded in bits.
    segment_two: u128, // The second segment of the URI, encoded in bits.
    segment_three: u128, // The third segment of the URI, encoded in bits.
    segment_four: u128, // The fourth segment of the URI, encoded in bits.
}

// Struct to represent the name of the NFT in a bitstring format.
struct BitstringName {
    part_one: u128, // The first part of the name, encoded as a bitstring.
    part_two: u128, // The second part of the name, encoded as a bitstring.
    part_three: u128, // The third part of the name, encoded as a bitstring.
    part_four: u128, // The fourth part of the name, encoded as a bitstring.
}
// Mapping for configuration flags, such as initialization and feature toggles.
mapping config_flags: u8 => u32;

// Mapping for detailed settings like total NFTs, symbol representation, and URI components.
mapping detailed_settings: u8 => u128;


// Struct to represent a registered name within the UniqueNameService.
struct NameRegistration {
    registrant: address, // The address that owns the registered name.
    label: Name,         // The name that is registered.
    expiry: u64,         // The timestamp when the registration is considered expired.
    identifier: TokenId  // The unique identifier associated with the name.
}

// Mapping from a unique field to the owner's address for NFT ownership tracking.
mapping asset_registry: field => address;

// Mapping from a name to an owner's address for ownership tracking of registered names.
mapping label_to_registrant: Name => address;

// Mapping from an owner's address to their primary name.
mapping main_label: address => Name;

// Mapping from a name to its registration details.
mapping label_details: Name => NameRegistration;


// To be continiued...
}
