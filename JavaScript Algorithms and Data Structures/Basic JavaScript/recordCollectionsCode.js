// Setup
const recordCollection = {
  2548: {
    albumTitle: 'Slippery When Wet',
    artist: 'Bon Jovi',
    tracks: ['Let It Rock', 'You Give Love a Bad Name']
  },
  2468: {
    albumTitle: '1999',
    artist: 'Prince',
    tracks: ['1999', 'Little Red Corvette']
  },
  1245: {
    artist: 'Robert Palmer',
    tracks: []
  },
  5439: {
    albumTitle: 'ABBA Gold'
  }
};

// Only change code below this line
function updateRecords(records, id, prop, value) {
  // first to retrieve the ids
  let album = records[id];

  // To check if album exists or not
  if (album) {
    // Case 2: if the value is empty "" string, del prop
    if (value === "") {
      delete album[prop];
    }
    // Case 3: If prop isn't tracks and value isn't an empty string, assign the value to that album's prop.
    if (prop !== "tracks" && value !== "") {
      album[prop] = value;
    }
    // Case 4: If prop is "tracks" and value isn't an empty string, update the album's tracks array.
    if (prop === "tracks" && value !== "") {
      // If the album does not have a tracks property, assign it an empty array.
      album.tracks = album.tracks || []
      // push the tracks to the last item of the tracks array, so even the empty array will have something.
      album.tracks.push(value);
    }

  }

  // This is Case 1:
  return records;
}

updateRecords(recordCollection, 5439, 'artist', 'ABBA');

console.log(recordCollection[5439]);

updateRecords(recordCollection, 5439, "tracks", "Take a Chance on Me");

console.log(recordCollection[5439]);

/*
Test:

Passed:After updateRecords(recordCollection, 5439, "artist", "ABBA"), artist should be the string ABBA
Passed:After updateRecords(recordCollection, 5439, "tracks", "Take a Chance on Me"), tracks should have the string Take a Chance on Me as the last and only element.
Passed:After updateRecords(recordCollection, 2548, "artist", ""), artist should not be set
Passed:After updateRecords(recordCollection, 1245, "tracks", "Addicted to Love"), tracks should have the string Addicted to Love as the last element.
Passed:After updateRecords(recordCollection, 2468, "tracks", "Free"), tracks should have the string 1999 as the first element.
Passed:After updateRecords(recordCollection, 2548, "tracks", ""), tracks should not be set
Passed:After updateRecords(recordCollection, 1245, "albumTitle", "Riptide"), albumTitle should be the string Riptide
*/
