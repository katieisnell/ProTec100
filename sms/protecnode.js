var clockwork = require('clockwork')({key:'781093f7a9ec4cadce50a8d666c1967e72786977'});

clockwork.sendSms({ To: '447935046038', Content: 'Test!'},
  function(error, resp) {
    if (error) {
        console.log('Something went wrong', error);
    } else {
        console.log('Message sent',resp.responses[0].id);
    }
});

var http = require('http');
var url = require('url');

//create a server object:
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  var q = url.parse(req.url, true).query;
  console.log(q.id);//Unique clockework id
  console.log(q.to);//my clockwork number
  console.log(q.from);//phone no. that sent the message
  console.log(q.content);//text of the message
  res.end(); //end the response
}).listen(80); //the server object listens on port 8080
