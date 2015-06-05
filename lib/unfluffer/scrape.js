extractor = require('unfluff');
var request = require('request');
// process.argv.forEach(function (val, index, array) {
//   console.log(index + ': ' + val);
// });

var headers = {
  'User-Agent': 'Uatu Agent/0.0.1',
  'Content-Type': 'application/x-www-form-urlencoded'
};

// Configure the request
var options = {
  url: process.argv[2],
  method: 'GET',
  headers: headers
};

request(options, function (error, response, body) {
  // console.log(response)
  // console.log(process.argv[2])
  // console.log(error)
  // console.log(response.statusCode)
  // console.log(body)
  if (!error && response.statusCode == 200) {
    unfluffed = extractor(body)
    unfluffed.url = response.request.uri.href
    console.log(JSON.stringify(unfluffed)); // Show the HTML for the Google homepage.
  }
});
