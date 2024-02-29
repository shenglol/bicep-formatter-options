// Object splitting is based on width and the existence of the newline between { and the first key
var person = { name: names[0], age: 30, city: 'New York', address: '' }

// Array splitting is purely based on width. This can lead to long single-line arrays.
var names = ['John', 'Jane', 'Jim', 'Jill', 'Jack', 'Joe']

// Questions:
// - Do we want to apply the same splitting rule to arrays?
//   - The downside is that the splitting rule is not "reversible".
//   - If yes, should it be enabled by default?
// - Do we want to add other heuristics for splitting arrays? For example:
//   - Splitting arrays based on the number of items
