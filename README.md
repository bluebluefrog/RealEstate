# RealEstate

### `run project in REApplicationApp`

### `make sure all maven repo is install`

### `set up marinadb`

use g7-re.sql to setup marinadb database

### `config project databse`

go to resources application.yml
set your own username and password and databasename
url: jdbc:mysql://localhost:3307/g7-re?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true
username: root
password: 123456

### `config cros origin in config file`

make sure is the same port with frountend

corsConfiguration.addAllowedOrigin("http://localhost:3000")

