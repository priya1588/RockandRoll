# RockandRoll
SongList App for iOS

Purpose: This app is lists 100 songs in a table view. It displays song title, band name and song icon. On clicking the table new 
page opens which shows a detailed view of selected song.

Libraries: 
libsqlite3.0 is used for data store and retrieval throughout the application.

Some points:
1. Custom view is used for table view cell and for displaying the details of song. This is for creating separate view from view controller.
2. Model class is used to store data fetched from Database to keep the model separate from view controller.
3. Database is kept as base for data storage because for listin 100 songs and details it is best possible solution rather than keeping the data in array dictioanry or any other storage.
It is also efficient to update the song list just by editing data in database rather than editing the application.

Hellooo!!
