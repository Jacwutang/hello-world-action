const http = require('http');

// Define the port number
const port = 3000;

// Create the server
const server = http.createServer((req, res) => {
  // Set the response header with status code and content type
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  console.log("A request was made")
  // Send the response
  res.end('Hello, Node World! \n');
});

// Start the server
server.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
