webgrep
=======

Check URLs and report back if text-patterns are found.  Behavior is
sought to emulate the CLI tool grep as close as possible.

URLs may be checked for the provided text-patterns only-once similarly
to grep, or they may be polled for the patterns over and over at a set
period.

Result output is made to STDOUT.
                                                                         
License
-------

`webgrep` is licensed under the Creative Commons 3.0 License.  Details
can be found in the file LICENSE.

License-file referencing and other doc. formatting inspired by
[damiendallimore](https://github.com/damiendallimore "damiendallimore on GitHub").

Install
-------

    gem install webgrep

Usage
-----
```shell
$ webgrep -p -t '1 day' -e cloudy -- 'http://www.weather.com/weather/right-now/Springfield+MO+USMO0828'

$ webgrep -e -n -i '\bcheck\b' -e patterns -- 'https://raw.github.com/aburnheimer/webgrep/master/README.md'
```

Contribute
----------

Please fork the GitHub project (https://github.com/aburnheimer/webgrep),
make any changes, commit and push to GitHub, and submit a pull request.
Including tests for your changes would be greatly appreciated!

Prior Art
---------

* Jef Poskanzer's Java _WebGrep_ application looks to have been developed
  over 1996-1998. It reportedly searches a web subtree for a pattern;
  basically "grep" for the web.  This ruby implementation serves exactly
  the same function.
  * http://acme.com/java/software/WebGrep.html

* On the other hand, none of the small programs Guido Socher developed
  in _webgrep_ look to serve this furnction at all.  The
  _HTML::TagReader_ project, which succeeded the _webgrep_ project, is a
  perl extension module which allows one to read local html/xml files
  by-tag as opposed to remotely-hosted ones.
  * http://www.linuxfocus.org/~guido/#webgrep

Contact
-------

This project was initiated by Andrew Burnheimer.

* Email:
  * aburnheimer@gmail.com
* Twitter:
  * @aburnheimer
* Github:
  * https://github.com/aburnheimer/
