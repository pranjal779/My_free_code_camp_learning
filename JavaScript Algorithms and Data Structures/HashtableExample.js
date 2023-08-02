/*
A hashtable is an object that stores key-value pairs. To create a hashtable in JavaScript, you can use the Object() constructor. The syntax is:
*/

const myHashtable = new Object();

/*
To add a key-value pair to a hashtable, you can use the .set() method. The syntax is:
*/

myHashtable.set('key', 'value');

/*
To get the value of a key in a hashtable, you can use the .get() method. The syntax is:
*/

const value = myHashtable.get('key');

/*
To remove a key-value pair from a hashtable, you can use the .delete() method. The syntax is:
*/

myHashtable.delete('key');

/*
Here is an example of how to use a hashtable in JavaScript:
*/

const myHashtable = new Object();

myHashtable.set('name', 'John Doe');
myHashtable.set('age', 30);

const name = myHashtable.get('name');
const age = myHashtable.get('age');

console.log('Name:', name);
console.log('Age:', age);

myHashtable.delete('name');

console.log('Name:', myHashtable.get('name')); // undefined
