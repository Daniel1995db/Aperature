User.create([
	{id: 1, name: 'Jon', last: 'Snow', username: 'ghost', password: 'northking', photo: open('http://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/15/09/jon-snow.jpg'), occupancy: 'King in the North', relationship: 'Its Complicated' },
	{id: 2, name: 'Arya', last: 'Stark', username: 'no1', password: 'iamno1', photo: open('http://images4.fanpop.com/image/photos/24400000/Arya-Stark-arya-stark-24485961-979-809.png'), occupancy: 'No one', relationship: 'single'},
	{id: 3, name: 'Sansa', last: 'Stark', username: 'lady', password: 'joffrey', photo: open('http://images6.fanpop.com/image/photos/37400000/Sansa-Stark-sansa-stark-37474878-4912-7360.jpg'), occupancy: 'Lady of Winterfell', relationship: 'Widowed and Divorced'}
])
Post.create([
	{id: 2, message: "Mood", photo: open('http://4.bp.blogspot.com/-PuAR6Fscv5g/TyZY6p42n1I/AAAAAAAABdg/IOAWVGXA1o4/s1600/Sansa.jpg'), user_id: 3, datetime: '2017-10-21 13:23:08'},
	{id: 3, message: "TBT #Nymeria", photo: open('http://images5.fanpop.com/image/photos/30400000/Nymeria-and-Arya-nymeria-30440523-530-299.jpg'), user_id: 2, datetime: '2017-10-19 14:31:08'},
	{id: 1, message: "Home Sweet Home #Winterfell", photo: open('http://awoiaf.westeros.org/images/f/ff/Lino_Drieghe_Winterfell.JPG'), user_id: 1, datetime: '2017-10-19 17:07:08'}
])