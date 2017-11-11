var clockwork = require('clockwork')({key:'781093f7a9ec4cadce50a8d666c1967e72786977'});
var http = require('http');
var url = require('url');

//create a server object:
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  var q = url.parse(req.url, true).query;
  //q.id//Unique clockework id
  //q.to//my clockwork number
  console.log(q.from);
  console.log(q.content);
  var from = q.from;//phone no. that sent the message
  var content = q.content;//text of the message

  //now check messages to see if they contain room name;
  //first, change text to lower case then compare
  content = content.toLowerCase();
  //declare room
  var room = 0;
  if(content.indexOf("mosi admin") > -1) {
    room = 1;
    console.log(room);
  }
  else if(content.indexOf("lobby") > -1) {
    room = 2;
    console.log(room);
  }
  else if(content.indexOf("dalton" > -1)) {
    room = 3;
    console.log(room);
  }
  else if(content.indexOf("joule") > -1) {
    room = 4;
    console.log(room);
  }
  else if(content.indexOf("lovell") > -1) {
    room = 5;
    console.log(room);
  }
  else if(content.indexOf("office") > -1) {
    room = 6;
    console.log(room);
  }
  else if(content.indexOf("whitworth") > -1) {
    room = 7;
    console.log(room);
  }
  else if(content.indexOf("emergency exit") > -1) {
    room = 8;
    console.log(room);
  }
  else if(content.indexOf("mens toilet") > -1) {
    room = 9;
    console.log(room);
  }
  else if(content.indexOf("disabled toilet") > -1) {
    room = 10;
    console.log(room);
  }
  else if(content.indexOf("womens toilet") > -1) {
    room = 11;
    console.log(room);
  }
  else if(content.indexOf("garratt") > -1) {
    room = 12;
    console.log(room);
  }
  else {
    clockwork.sendSms({ To: from, Content: 'Please provide the name of the room (eg. lobby, joule room, emergency exit)'},
      function(error, resp) {
        if (error) {
            console.log('Something went wrong', error);
        } else {
            console.log('Message sent',resp.responses[0].id);
        }
    });
  }
  res.end(); //end the response
}).listen(443); //the server object listens on port 443
