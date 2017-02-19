// In real code, users will do
// import now = require('performance-now');
import now = require('../src/index');

// Declare a variable to have the type `number`.
let num: number;

// If the typescript compiler doesn't warn here,
// the result of now() is a number.
num = now()
