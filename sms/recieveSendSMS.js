var clockwork = require('clockwork')({key:'781093f7a9ec4cadce50a8d666c1967e72786977'});
var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  var q = url.parse(req.url, true).query;

  // now check messages to see if they contain room name;
  // first, change text to lower case then compare
  var content = q.content.toLowerCase();
  // declare room
  var room = 0;
  if(content.indexOf("mosi admin") > -1) {
    room = 1;
  }
  else if(content.indexOf("lobby") > -1) {
    room = 2;
  }
  else if(content.indexOf("dalton") > -1) {
    room = 3;
  }
  else if(content.indexOf("joule") > -1) {
    room = 4;
  }
  else if(content.indexOf("lovell") > -1) {
    room = 5;
  }
  else if(content.indexOf("office") > -1) {
    room = 6;
  }
  else if(content.indexOf("whitworth") > -1) {
    room = 7;
  }
  else if(content.indexOf("emergency exit") > -1) {
    room = 8;
  }
  else if(content.indexOf("mens toilet") > -1) {
    room = 9;
  }
  else if(content.indexOf("disabled toilet") > -1) {
    room = 10;
  }
  else if(content.indexOf("womens toilet") > -1) {
    room = 11;
  }
  else if(content.indexOf("garratt") > -1) {
    room = 12;
  }
  //if info not sufficient
  else {
    clockwork.sendSms({ To: q.from, Content: 'Please provide the name of the room (eg. lobby, joule room, emergency exit, mens toilet)'},
    function(error, resp) {
    if (error) {
        console.log('Something went wrong', error);
    } else {
        console.log('Message sent',resp.responses[0].id);
    }});
  }
  //if we have received room info
  if (room > 0) {
    clockwork.sendSms({ To: q.from, Content: 'Thanks for your infomation! Support is on the way.'},
    function(error, resp) {
      if (error) {
          console.log('Something went wrong', error);
      } else {
          console.log('Message sent',resp.responses[0].id);
      }
    });
  }
  
  res.end();
}).listen(80);

//sending info to the app (todo)
http.createServer(function (req, res) {
   res.writeHead(200, {'Content-Type': 'text/html'});
   res.write(contents[0]);
   res.end();
}).listen(8080);
