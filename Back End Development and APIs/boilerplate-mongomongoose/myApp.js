require('dotenv').config();


// let Person;
console.log(process.env.MONGODB_URI)
let MONGODB_URI = 'mongodb+srv://pranjal779:lrN4MyXPBqFaEonB@cluster0.13r9c5x.mongodb.net/?retryWrites=true&w=majority'
let mongoose = require('mongoose')

// line 6, 7, 8 + "node myApp.js" in terminal should return 
// ongodb+srv://pranjal779:lrN4MyXPBqFaEonB@cluster0.13r9c5x.mongodb.net/?retryWrites=true&w=majority

mongoose.connect(MONGODB_URI, { useNewUrlParser: true, useUnifiedTopology: true });

let peopleSchema = new mongoose.Schema({
  name : {type: String, required: true},
  age : Number,
  favoriteFoods : [String]
})

let Person = mongoose.model('Person', peopleSchema)

let pranjal = new Person({name : 'Pranjal', age: 27, favoriteFoods: ['pizza', 'chips']})
console.log(pranjal)

const createAndSavePerson = (done) => {
  let franc = new Person({name:'franc', age: 25, favoriteFoods: ['puri', 'allo ki sabhji']})
  franc.save((error, data) => {
    if(error){
      console.log(error)
    }else{
      done(null, data)
    }
  })
  // done(null /*, data*/); ''' this line was hint
};

let arrayOfPeople = [
  {name: 'Gary', age: 35, favoriteFoods: ['fried chicken', 'chicken wings', 'chicken nuggets']},
  {name: 'Pranjal Shukla', age: 27, favoriteFoods: ['fried chicken', 'daal', 'kfc popcorn chicken nuggets']},
  {name: 'Hannah', age: 24, favoriteFoods: ['mango', 'salad', 'tandori-butter-chicken']},
  {name: 'Gabe', age: 42, favoriteFoods: ['wabadubabuabalubbalub', 'ew-incest-stuff', 'clingy', 'rickest-pickle']}
]

const createManyPeople = (arrayOfPeople, done) => {
  
  Person.create(arrayOfPeople, (error, createdPeople) => {
    if (error){
      console.log(error)
    }else{
      done(null, createdPeople)
    }
  });
  // done(null /*, data*/);
};

Person.find({name: 'Gabe'}, (error, data) => {
  if(error){
    console.log(error)
  }else{
    console.log(data)
  }
})

var findPeopleByName = (personName, done) => {
  Person.find({name: personName}, (error, createdPeople) =>{
    if(error){
      console.log(error)
    }else{
      done(null, createdPeople)
    }
  })
  //done(null /*, data*/);
};

/*
Person.findOne({favoriteFoods: {$all: ['mango']}}, (error, data) => {
  if(error){
    console.log(error)
  }else{
    console.log(data) //firstmatch is only returned as .findOne() is used
    //console.log(data[0]) //returning the first match if it is Person.find()
  }
})*/

var findOneByFood = function(food, done) {
  Person.findOne({favoriteFoods: {$all : [food]}}, (error, result) => {
    if (error){
      console.log(error)
    }else{
      done(null, result)
    }
  })
};

/*
const findOneByFood = (food, done) => {
  done(null //, data);
  }; 
*/

const findPersonById = (personId, done) => {
  Person.findById(personId, (error, result) => {
    if(error){
      console.log(error)
    }else{
      done(null, result)
    }
  })
  //done(null /*, data*/);
};

const findEditThenSave = function(personId, done) {
  const foodToAdd = "hamburger";

  Person.findById(personId, (error, result) => {
    if(error){
      console.log(error)
    }else{
      result.favoriteFoods.push(foodToAdd)
      result.save((error, updatedResult) => {
        if(error){
          console.log(error)
        }else{
          done(null, updatedResult)
        }
      })
    }
  })
}

const findAndUpdate = (personName, done) => {
  const ageToSet = 20;

  Person.findOneAndUpdate({name: personName}, {age: ageToSet}, {new: true}, (error, updatedRecord) => {
    if(error){
      console.log(error)
    }else{
      done(null, updatedRecord);
    }
  })
};

const removeById = (personId, done) => {

  Person.findByIdAndRemove(personId, (error, deleteRecord) => {
    if(error){
      console.log(error)
    }else{
      done(null, deleteRecord)
    }
  })
};

const removeManyPeople = (done) => {
  const nameToRemove = "Mary";

  Person.remove({name: nameToRemove}, (error, JSONStatus) => {
    if(error){
      console.log(error)
    }else{
      done(null, JSONStatus)
    }
  })
};

const queryChain = (done) => {
  const foodToSearch = "burrito";

  Person.find({favoriteFoods : {$all: [foodToSearch]}})
  .sort({name: 'asc'})
  .limit(2)
  .select('-age')
  .exec((error, filteredResults) => {
    if(error){
      console.log(error)
    }else{
      done(null, filteredResults)  
    }
  })
};

/** **Well Done !!**
/* You completed these challenges, let's go celebrate !
 */

//----- **DO NOT EDIT BELOW THIS LINE** ----------------------------------

exports.PersonModel = Person;
exports.createAndSavePerson = createAndSavePerson;
exports.findPeopleByName = findPeopleByName;
exports.findOneByFood = findOneByFood;
exports.findPersonById = findPersonById;
exports.findEditThenSave = findEditThenSave;
exports.findAndUpdate = findAndUpdate;
exports.createManyPeople = createManyPeople;
exports.removeById = removeById;
exports.removeManyPeople = removeManyPeople;
exports.queryChain = queryChain;
