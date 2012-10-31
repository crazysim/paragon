Paragon
=======

The SmartReceipt IRC bot (paragon is the Polish word for receipt).

Installation
------------

```sh
git clone https://github.com/justinforce/paragon
cd paragon
bundle
```

Setup
-----

Copy `config/database.example.yml` to `config/database.yml` and edit it to suit
your environment. Next, use Rails-style rake tasks to migrate it.

```sh
rake db:migrate
```

License
-------

Licensed under the MIT License. See LICENSE file.

Copyright
---------

Copyright © Justin Force
