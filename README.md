# Application Coordinator pattern

### First, I want to thank Andrey Panov and CocoaHeads for the lecture on 'Coordinator pattern in app'! 
### Link for lecture: <a href="https://www.youtube.com/watch?v=mz-XLkUTMkE&t=1284s"><img src="https://logodix.com/logo/22645.png" width="35px" height="25px"/></a> 

This repository is my implementation for my own objectives and goals.

In this project, interactions between "Controllers" were completely deleted.

Every 'Controller' doesn't know anything about another 'Controller'.

All interactions' logic is transfered to our 'Application Coordinator'.

'Application Coordinator' in it's turn manages all other 'Coordinators'.

Every coordinator is supported by:
- Router (It answers for transition between 'Controllers'.)
- Coordinator's  factory (It answers for chosing needed 'Coordinator' at the moment.)
- Module's fabric (Is answers for every module configuration. Module can consist of one or more 'Controllers')

The following pattern perfectly corresponds to S.O.L.I.D principles!
