extractor = require('unfluff');
var request = require('request');
// process.argv.forEach(function (val, index, array) {
//   console.log(index + ': ' + val);
// });
request(process.argv[2], function (error, response, body) {
  if (!error && response.statusCode == 200) {
    unfluffed = extractor(body)
    unfluffed.url = response.request.uri.href
    console.log(JSON.stringify(unfluffed)); // Show the HTML for the Google homepage.
  }
});
