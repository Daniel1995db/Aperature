User.create([
	{id: 1, name: 'Jon', last: 'Snow', username: 'ghost', password: 'northking', photo: open('http://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/15/09/jon-snow.jpg'), occupancy: 'King in the North', relationship: 'Complicated' },
])
Post.create([
	{id: 1, message: "I am King in the North", photo: open('http://awoiaf.westeros.org/images/f/ff/Lino_Drieghe_Winterfell.JPG'), user_id: 1} 
])