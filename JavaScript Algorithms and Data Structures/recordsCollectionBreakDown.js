/*
Let's break down the requirements and go through each condition step by step:

1. **Your function must always return the entire records object.**
   - This means your function should modify the `records` object in place and then return it.

2. **If value is an empty string, delete the given prop property from the album.**
   - If the `value` is an empty string, you need to delete the `prop` property from the album.

3. **If prop isn't "tracks" and value isn't an empty string, assign the value to that album's prop.**
   - If `prop` is not "tracks" and `value` is not an empty string, you need to update the `prop` property of the album with the provided `value`.

4. **If prop is "tracks" and value isn't an empty string, you need to update the album's tracks array.**
   - If `prop` is "tracks" and `value` is not an empty string:
     - If the album does not have a `tracks` property, assign it an empty array.
     - Add the `value` as the last item in the album's `tracks` array.

Now, let's implement this logic in your `updateRecords` function:
*/
```
function updateRecords(records, id, prop, value) {
  // Retrieve the album with the given id
  let album = records[id];

  // Check if the album exists
  if (album) {
    // Case 2: If value is an empty string, delete the given prop property from the album.
    if (value === "") {
      delete album[prop];
    }
    // Case 3: If prop isn't "tracks" and value isn't an empty string, assign the value to that album's prop.
    else if (prop !== "tracks" && value !== "") {
      album[prop] = value;
    }
    // Case 4: If prop is "tracks" and value isn't an empty string, update the album's tracks array.
    else if (prop === "tracks" && value !== "") {
      // If the album does not have a tracks property, assign it an empty array.
      album.tracks = album.tracks || [];
      // Add the value as the last item in the album's tracks array.
      album.tracks.push(value);
    }
  }

  // Return the modified records object
  return records;
}

/*
// Example usage:
console.log(updateRecords(recordCollection, 5439, 'artist', 'ABBA'));
```

This should give you a starting point for implementing the logic. You can now go through the other test cases and modify the `updateRecords` function accordingly.
*/
