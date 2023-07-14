codeally@f64b0abc58d0:~/project$ echo hello terminal
hello terminal
codeally@f64b0abc58d0:~/project$ pwd
/home/codeally/project
codeally@f64b0abc58d0:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate
codeally@f64b0abc58d0:~/project$ cd freeCodeCamp/
codeally@f64b0abc58d0:~/project/freeCodeCamp$ pwd
/home/codeally/project/freeCodeCamp
codeally@f64b0abc58d0:~/project/freeCodeCamp$ ls
node_modules  package.json  package-lock.json  reset.sh  setup.sh  test
codeally@f64b0abc58d0:~/project/freeCodeCamp$ 
codeally@f64b0abc58d0:~/project/freeCodeCamp$ cd test/
codeally@f64b0abc58d0:~/project/freeCodeCamp/test$ pwd
/home/codeally/project/freeCodeCamp/test
codeally@f64b0abc58d0:~/project/freeCodeCamp/test$ ls
1000.test.js  1090.test.js  1200.test.js  1290.test.js  1390.test.js  1470.test.js  181.test.js  250.test.js  350.test.js  460.test.js  570.test.js  660.test.js  760.test.js  90.test.js
100.test.js   10.test.js    120.test.js   1300.test.js  1400.test.js  1475.test.js  182.test.js  260.test.js  360.test.js  470.test.js  580.test.js  670.test.js  770.test.js  910.test.js
1010.test.js  1100.test.js  1210.test.js  130.test.js   1405.test.js  1480.test.js  183.test.js  270.test.js  370.test.js  480.test.js  585.test.js  680.test.js  780.test.js  920.test.js
1020.test.js  110.test.js   1215.test.js  1310.test.js  140.test.js   1490.test.js  184.test.js  280.test.js  380.test.js  490.test.js  590.test.js  690.test.js  790.test.js  930.test.js
1030.test.js  1110.test.js  1220.test.js  1315.test.js  1410.test.js  1500.test.js  185.test.js  285.test.js  390.test.js  500.test.js  5.test.js    700.test.js  800.test.js  940.test.js
1040.test.js  1120.test.js  1230.test.js  1320.test.js  1415.test.js  150.test.js   190.test.js  290.test.js  400.test.js  50.test.js   600.test.js  70.test.js   80.test.js   950.test.js
1050.test.js  1130.test.js  1240.test.js  1330.test.js  1420.test.js  1510.test.js  200.test.js  300.test.js  40.test.js   510.test.js  60.test.js   710.test.js  850.test.js  960.test.js
1055.test.js  1135.test.js  1250.test.js  1340.test.js  1430.test.js  1520.test.js  20.test.js   30.test.js   410.test.js  520.test.js  610.test.js  720.test.js  860.test.js  970.test.js
1060.test.js  1150.test.js  1260.test.js  1350.test.js  1440.test.js  1530.test.js  210.test.js  310.test.js  420.test.js  530.test.js  620.test.js  730.test.js  870.test.js  980.test.js
1065.test.js  1170.test.js  1270.test.js  1360.test.js  1445.test.js  160.test.js   220.test.js  320.test.js  430.test.js  540.test.js  630.test.js  740.test.js  880.test.js  990.test.js
1070.test.js  1190.test.js  1275.test.js  1370.test.js  1450.test.js  170.test.js   230.test.js  330.test.js  440.test.js  550.test.js  640.test.js  750.test.js  890.test.js  utils.js
1080.test.js  1195.test.js  1280.test.js  1380.test.js  1460.test.js  180.test.js   240.test.js  340.test.js  450.test.js  560.test.js  650.test.js  755.test.js  900.test.js
codeally@f64b0abc58d0:~/project/freeCodeCamp/test$ ls -ltra
codeally@f64b0abc58d0:~/project/freeCodeCamp/test$ cd ..
codeally@f64b0abc58d0:~/project/freeCodeCamp$ ls
node_modules  package.json  package-lock.json  reset.sh  setup.sh  test
codeally@f64b0abc58d0:~/project/freeCodeCamp$ more test/

*** test/: directory ***

codeally@f64b0abc58d0:~/project/freeCodeCamp$ 
codeally@f64b0abc58d0:~/project/freeCodeCamp$ more package.json
{
  "name": "freecodecamp",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "programmatic-test": "mocha --config .mocharc.json",
    "test": "mocha --config .mocharc.json"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "mocha": "^7.2.0",
    "mocha-tap-reporter": "^0.1.3",
    "shell-quote": "^1.7.2"
  }
}
codeally@f64b0abc58d0:~/project/freeCodeCamp$ clear

codeally@f64b0abc58d0:~/project/freeCodeCamp$ ls
node_modules  package.json  package-lock.json  reset.sh  setup.sh  test
codeally@f64b0abc58d0:~/project/freeCodeCamp$ 
codeally@f64b0abc58d0:~/project/freeCodeCamp$ cd node_modules/
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules$ ls
ansi-colors        chalk              es-abstract           glob-parent     is-date-object           log-symbols                       object-inspect     require-main-filename       to-regex-range
ansi-regex         chokidar           escape-string-regexp  growl           isexe                    minimatch                         object-keys        semver                      which
ansi-styles        cliui              esprima               has             is-extglob               minimist                          once               set-blocking                which-module
anymatch           color-convert      es-to-primitive       has-flag        is-fullwidth-code-point  mkdirp                            path-exists        shell-quote                 wide-align
argparse           color-name         fill-range            has-symbols     is-glob                  mocha                             path-is-absolute   sprintf-js                  wrap-ansi
balanced-match     concat-map         find-up               he              is-number                mocha-tap-reporter                picomatch          string.prototype.trimend    wrappy
binary-extensions  debug              flat                  inflight        is-regex                 ms                                p-limit            string.prototype.trimstart  y18n
brace-expansion    decamelize         fs.realpath           inherits        is-symbol                node-environment-flags            p-locate           string-width                yargs
braces             define-properties  function-bind         is-binary-path  js-yaml                  normalize-path                    p-try              strip-ansi                  yargs-parser
browser-stdout     diff               get-caller-file       is-buffer       locate-path              object.assign                     readdirp           strip-json-comments         yargs-unparser
camelcase          emoji-regex        glob                  is-callable     lodash                   object.getownpropertydescriptors  require-directory  supports-color
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules$ 

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules$ ls -l
total 408
drwxr-sr-x  3 codeally strove  4096 Jul 13 17:17 ansi-colors
drwxr-sr-x  2 codeally strove  4096 Jul 13 17:17 ansi-regex
drwxr-sr-x  2 codeally strove  4096 Jul 13 17:17 ansi-styles
drwxr-sr-x  2 codeally strove  4096 Jul 13 17:17 anymatch
drwxr-sr-x  3 codeally strove  4096 Jul 13 17:17 argparse
drwxr-sr-x  2 codeally strove  4096 Jul 13 17:17 balanced-match
.
.
.
.
.
.

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules$ cd has
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ ls
LICENSE-MIT  package.json  README.md  src  test
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ 


codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ more README.md 
# has

> Object.prototype.hasOwnProperty.call shortcut

## Installation

```sh
npm install --save has
```

## Usage

```js
var has = require('has');

has({}, 'hasOwnProperty'); // false
has(Object.prototype, 'hasOwnProperty'); // true
```
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ ls
LICENSE-MIT  package.json  README.md  src  test
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ more README.md 
# has

> Object.prototype.hasOwnProperty.call shortcut

## Installation

```sh
npm install --save has
```

## Usage

```js
var has = require('has');

has({}, 'hasOwnProperty'); // false
has(Object.prototype, 'hasOwnProperty'); // true
```
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ ^C
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ ls
LICENSE-MIT  package.json  README.md  src  test
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ more LICENSE-MIT 
Copyright (c) 2013 Thiago de Arruda

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ clear


codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ ls
LICENSE-MIT  package.json  README.md  src  test
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ cd src/

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ pwd
/home/codeally/project/freeCodeCamp/node_modules/has/src
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ 

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ ls
index.js
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ 

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ more index.js
'use strict';

var bind = require('function-bind');

module.exports = bind.call(Function.call, Object.prototype.hasOwnProperty);
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ 

codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has/src$ cd ..
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules/has$ cd ..
codeally@f64b0abc58d0:~/project/freeCodeCamp/node_modules$ cd ../..
codeally@f64b0abc58d0:~/project$ 

codeally@f64b0abc58d0:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate
codeally@f64b0abc58d0:~/project$ clear

codeally@f64b0abc58d0:~/project$ mkdir website
codeally@f64b0abc58d0:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate  website
codeally@f64b0abc58d0:~/project$ cd website
codeally@f64b0abc58d0:~/project/website$ ls
codeally@f64b0abc58d0:~/project/website$ echo "hello website"
hello website
codeally@f64b0abc58d0:~/project/website$ echo hello website
hello website
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ touch index.html
codeally@f64b0abc58d0:~/project/website$ touch styles.css
codeally@f64b0abc58d0:~/project/website$ ls
index.html  styles.css
codeally@f64b0abc58d0:~/project/website$ touch index.js
codeally@f64b0abc58d0:~/project/website$ touch .gitignore
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ ls
index.html  index.js  styles.css
codeally@f64b0abc58d0:~/project/website$ ls --help
Usage: ls [OPTION]... [FILE]...
List information about the FILEs (the current directory by default).
Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

Mandatory arguments to long options are mandatory for short options too.
.
.
.
.
.

Scroll through the menu to see the flags that go with ls. The flag you are looking for is --all, or -a for short. List all the contents of the website folder using the correct flag.

codeally@f64b0abc58d0:~/project/website$ ls --all
.  ..  .gitignore  index.html  index.js  styles.css

There's the hidden file. Do you see it? It didn't display before. It also includes . and ... You used cd .. to go back a folder earlier. Change to the . directory.


codeally@f64b0abc58d0:~/project/website$ cd .
codeally@f64b0abc58d0:~/project/website$ 


You didn't go anywhere. The . takes you to the folder you are in, and .. takes you back, or up, a folder. Websites need some images. Create background.jpg in the website folder.

codeally@f64b0abc58d0:~/project/website$ touch background.jpg
codeally@f64b0abc58d0:~/project/website$ touch header.png
codeally@f64b0abc58d0:~/project/website$ touch footer.jpeg
codeally@f64b0abc58d0:~/project/website$ ls
background.jpg  footer.jpeg  header.png  index.html  index.js  styles.css
codeally@f64b0abc58d0:~/project/website$ touch roboto.font
codeally@f64b0abc58d0:~/project/website$ touch lato.font
codeally@f64b0abc58d0:~/project/website$ touch menlo.font
codeally@f64b0abc58d0:~/project/website$ ls
background.jpg  footer.jpeg  header.png  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ touch CodeAlly.svg
codeally@f64b0abc58d0:~/project/website$ touch CodeRoad.svg
codeally@f64b0abc58d0:~/project/website$ touch freeCodeCamp.svg
codeally@f64b0abc58d0:~/project/website$ 
codeally@f64b0abc58d0:~/project/website$ ls
background.jpg  CodeAlly.svg  CodeRoad.svg  footer.jpeg  freeCodeCamp.svg  header.png  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ 


The icons are pink as well. I think the images should go in a separate folder to clean it up a little. Make an images directory in the website folder to put them in.

codeally@f64b0abc58d0:~/project/website$ mkdir images
codeally@f64b0abc58d0:~/project/website$ ls
background.jpg  CodeAlly.svg  CodeRoad.svg  footer.jpeg  freeCodeCamp.svg  header.png  images  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ 
codeally@f64b0abc58d0:~/project/website$ cp background.jpg images/
codeally@f64b0abc58d0:~/project/website$ cd images/
codeally@f64b0abc58d0:~/project/website/images$ ls
background.jpg
codeally@f64b0abc58d0:~/project/website/images$ cd ..
codeally@f64b0abc58d0:~/project/website$ ls
background.jpg  CodeAlly.svg  CodeRoad.svg  footer.jpeg  freeCodeCamp.svg  header.png  images  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ 


You copied the background image to the images folder so you don't need the one here anymore. You can remove a file with rm <filename>. Remove background.jpg from the website folder.

codeally@f64b0abc58d0:~/project/website$ rm background.jpg
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  footer.jpeg  freeCodeCamp.svg  header.png  images  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ cp header.png images/
codeally@f64b0abc58d0:~/project/website$ cp footer.jpeg images/
codeally@f64b0abc58d0:~/project/website$ cd images/
codeally@f64b0abc58d0:~/project/website/images$ ls
background.jpg  footer.jpeg  header.png
codeally@f64b0abc58d0:~/project/website/images$ cd ..
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  footer.jpeg  freeCodeCamp.svg  header.png  images  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ rm header.png
codeally@f64b0abc58d0:~/project/website$ rm footer.jpeg 
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  freeCodeCamp.svg  images  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ mv


Looks like they're all deleted. There was a mistake with the extensions for the font files. You can rename them with mv like this: mv <filename> <new_filename>. mv stands for "move", it can rename or move something. Rename roboto.font to roboto.woff.

codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  freeCodeCamp.svg  images  index.html  index.js  lato.font  menlo.font  roboto.font  styles.css
codeally@f64b0abc58d0:~/project/website$ mv roboto.font roboto.woff
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  freeCodeCamp.svg  images  index.html  index.js  lato.font  menlo.font  roboto.woff  styles.css
codeally@f64b0abc58d0:~/project/website$ mv lato.font lato.ttf
codeally@f64b0abc58d0:~/project/website$ mv menlo.font menlo.otf
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  freeCodeCamp.svg  images  index.html  index.js  lato.ttf  menlo.otf  roboto.woff  styles.css
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ mkdir fonts
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  fonts  freeCodeCamp.svg  images  index.html  index.js  lato.ttf  menlo.otf  roboto.woff  styles.css
codeally@f64b0abc58d0:~/project/website$ mv roboto.woff fonts/
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ mkdir fonts
codeally@f64b0abc58d0:~/project/website$ ls
CodeAlly.svg  CodeRoad.svg  fonts  freeCodeCamp.svg  images  index.html  index.js  lato.ttf  menlo.otf  roboto.woff  styles.css
codeally@f64b0abc58d0:~/project/website$ mv roboto.woff fonts/
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ 
codeally@f64b0abc58d0:~/project/website$ find
.
./menlo.otf
./index.js
./index.html
./.gitignore
./freeCodeCamp.svg
./CodeRoad.svg
./CodeAlly.svg
./images
./images/header.png
./images/footer.jpeg
./images/background.jpg
./lato.ttf
./styles.css
./fonts
./fonts/roboto.woff
codeally@f64b0abc58d0:~/project/website$

codeally@f64b0abc58d0:~/project/website$ 
codeally@f64b0abc58d0:~/project/website$ mv lato.ttf fonts/
codeally@f64b0abc58d0:~/project/website$ mv menlo.otf fonts/
codeally@f64b0abc58d0:~/project/website$ find
.
./index.js
./index.html
./.gitignore
./freeCodeCamp.svg
./CodeRoad.svg
./CodeAlly.svg
./images
./images/header.png
./images/footer.jpeg
./images/background.jpg
./styles.css
./fonts
./fonts/menlo.otf
./fonts/roboto.woff
./fonts/lato.ttf
codeally@f64b0abc58d0:~/project/website$ ^C
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ mv index.js client/src/
codeally@f64b0abc58d0:~/project/website$ mv styles.css client/src/
codeally@f64b0abc58d0:~/project/website$ find
.
./.gitignore
./freeCodeCamp.svg
./CodeRoad.svg
./client
./client/src
./client/src/index.js
./client/src/index.html
./client/src/styles.css
./CodeAlly.svg
./images
./images/header.png
./images/footer.jpeg
./images/background.jpg
./fonts
./fonts/menlo.otf
./fonts/roboto.woff
./fonts/lato.ttf
codeally@f64b0abc58d0:~/project/website$ 

codeally@f64b0abc58d0:~/project/website$ 
codeally@f64b0abc58d0:~/project/website$ find client
client
client/src
client/src/index.js
client/src/index.html
client/src/styles.css
codeally@f64b0abc58d0:~/project/website$ 
codeally@87c963e286e1:~/project/website$ find --help
Usage: find [-H] [-L] [-P] [-Olevel] [-D debugopts] [path...] [expression]

default path is the current directory; default expression is -print
expression may consist of: operators, options, tests, and actions:
operators (decreasing precedence; -and is implicit where no others are given):
      ( EXPR )   ! EXPR   -not EXPR   EXPR1 -a EXPR2   EXPR1 -and EXPR2
.
.
..
.

codeally@87c963e286e1:~/project/website$ find -name index.html
./client/src/index.html
codeally@87c963e286e1:~/project/website$ 

{after some time}

codeally@1b9953d87cd8:~/project/website$ cd ..
codeally@1b9953d87cd8:~/project$ cd website/client/assets/images/
codeally@1b9953d87cd8:~/project/website/client/assets/images$ cd ../../../
codeally@1b9953d87cd8:~/project/website$ 
codeally@1b9953d87cd8:~/project/website$ cd images/
codeally@1b9953d87cd8:~/project/website/images$ ls
background.jpg  footer.jpeg  header.png
codeally@1b9953d87cd8:~/project/website/images$ mv header.png ..
codeally@1b9953d87cd8:~/project/website/images$ 

codeally@1b9953d87cd8:~/project/website$ mv header.png ./client/assets/images/

codeally@1b9953d87cd8:~/project/website$ find -name header.png

codeally@1b9953d87cd8:~/project/website$ find -name footer.jpeg
codeally@1b9953d87cd8:~/project/website$ 



codeally@1b9953d87cd8:~/project/website$ find -name footer.jpeg
./images/footer.jpeg
codeally@1b9953d87cd8:~/project/website$ mv ./images/footer.jpeg ./client/assets/images/
codeally@1b9953d87cd8:~/project/website$ 
codeally@1b9953d87cd8:~/project/website$ find
.
./.gitignore
./freeCodeCamp.svg
./CodeRoad.svg
./client
./client/src
./client/src/index.js
./client/src/index.html
./client/src/styles.css
./client/assets
./client/assets/images
./client/assets/images/header.png
./client/assets/images/footer.jpeg
./client/assets/images/background.jpg
./CodeAlly.svg
./images
./images/background.jpg
./fonts
./fonts/menlo.otf
./fonts/roboto.woff
./fonts/lato.ttf
codeally@1b9953d87cd8:~/project/website$ 
codeally@1b9953d87cd8:~/project/website$ 
codeally@1b9953d87cd8:~/project/website$ rmdir images/

codeally@1b9953d87cd8:~/project/website$ 
codeally@1b9953d87cd8:~/project/website$ 

.
.
.
.
.
.


It worked, the images folder is gone. Make a new icons folder in your assets folder while in the website folder.

codeally@1b9953d87cd8:~/project/website$ mkdir client/assets/icons
codeally@1b9953d87cd8:~/project/website$ ls
client  CodeAlly.svg  CodeRoad.svg  fonts  freeCodeCamp.svg
codeally@1b9953d87cd8:~/project/website$ mv CodeAlly.svg client/assets/icons/

codeally@1b9953d87cd8:~/project/website$ mv CodeRoad.svg client/assets/icons/

codeally@1b9953d87cd8:~/project/website$ mv freeCodeCamp.svg client/assets/icons/
codeally@1b9953d87cd8:~/project/website$ 



codeally@1b9953d87cd8:~/project/website$ find
.
./.gitignore
./client
./client/src
./client/src/index.js
./client/src/index.html
./client/src/styles.css
./client/assets
./client/assets/icons
./client/assets/icons/freeCodeCamp.svg
./client/assets/icons/CodeRoad.svg
./client/assets/icons/CodeAlly.svg
./client/assets/images
./client/assets/images/header.png
./client/assets/images/footer.jpeg
./client/assets/images/background.jpg
./fonts
./fonts/menlo.otf
./fonts/roboto.woff
./fonts/lato.ttf
codeally@1b9953d87cd8:~/project/website$ 


codeally@1b9953d87cd8:~/project/website$ mkdir client/assets/fonts
codeally@1b9953d87cd8:~/project/website$ 


codeally@1b9953d87cd8:~/project/website$ touch client/assets/fonts/roboto-bold.woff
codeally@1b9953d87cd8:~/project/website$ 

codeally@1b9953d87cd8:~/project/website$ find client/assets/fonts/
client/assets/fonts/
client/assets/fonts/roboto-bold.woff
client/assets/fonts/roboto-light.woff
codeally@1b9953d87cd8:~/project/website$ 
codeally@a105bd934250:~/project/website$ touch client/assets/fonts/lato-bold.ttf
codeally@a105bd934250:~/project/website$ touch client/assets/fonts/lato-light.ttf
codeally@a105bd934250:~/project/website$ find
.
./.gitignore
./client
./client/src
./client/src/index.js
./client/src/index.html
./client/src/styles.css
./client/assets
./client/assets/icons
./client/assets/icons/freeCodeCamp.svg
./client/assets/icons/CodeRoad.svg
./client/assets/icons/CodeAlly.svg
./client/assets/images
./client/assets/images/header.png
./client/assets/images/footer.jpeg
./client/assets/images/background.jpg
./client/assets/fonts
./client/assets/fonts/roboto-bold.woff
./client/assets/fonts/lato-bold.ttf
./client/assets/fonts/roboto-light.woff
./client/assets/fonts/lato-light.ttf
./fonts
./fonts/menlo.otf
./fonts/roboto.woff
./fonts/lato.ttf
codeally@a105bd934250:~/project/website$ ^C
codeally@a105bd934250:~/project/website$ 
codeally@a105bd934250:~/project/website$ rm --help

codeally@a105bd934250:~/project/website$ rm -r fonts/
codeally@a105bd934250:~/project/website$ ls
client
codeally@a105bd934250:~/project/website$ 

codeally@a105bd934250:~/project/website$ touch package.json
codeally@a105bd934250:~/project/website$ touch server.js
codeally@a105bd934250:~/project/website$ touch README.md
codeally@a105bd934250:~/project/website$ ls
client  package.json  README.md  server.js
codeally@a105bd934250:~/project/website$ 

codeally@a105bd934250:~/project/website$ 
codeally@a105bd934250:~/project/website$ evho Yay!
bash: evho: command not found
codeally@a105bd934250:~/project/website$ echo Yay!
Yay!
codeally@a105bd934250:~/project/website$ echo I finished the boilerplate!
I finished the boilerplate!
codeally@a105bd934250:~/project/website$ echo one more thing...
one more thing...

You can print to a file instead of the terminal with echo text >> filename. Use it to print I made this boilerplate to your README.md file.

codeally@a105bd934250:~/project/website$ more README.md
I made this boilerplate
codeally@a105bd934250:~/project/website$ 

codeally@a105bd934250:~/project/website$ echo from the command line >> README.md 
codeally@a105bd934250:~/project/website$ more README.md 
I made this boilerplate
from the command line
codeally@a105bd934250:~/project/website$ echo for the freeCodeCamp bash lessons >> README.md
codeally@a105bd934250:~/project/website$ 
codeally@a105bd934250:~/project/website$ more README.md 
I made this boilerplate
from the command line
for the freeCodeCamp bash lessons
codeally@a105bd934250:~/project/website$ 

codeally@a105bd934250:~/project/website$ cd ..
codeally@a105bd934250:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate  website
codeally@a105bd934250:~/project$ mv website website-boilerplate
codeally@a105bd934250:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate  website-boilerplate
codeally@a105bd934250:~/project$ cp --help

codeally@a105bd934250:~/project$ cp -r website-boilerplate/ toms-website/
codeally@a105bd934250:~/project$ 

codeally@a105bd934250:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate  toms-website  website-boilerplate
codeally@a105bd934250:~/project$ find toms-website/
toms-website/
toms-website/.gitignore
toms-website/README.md
toms-website/client
toms-website/client/src
toms-website/client/src/index.js
toms-website/client/src/index.html
toms-website/client/src/styles.css
toms-website/client/assets
toms-website/client/assets/icons
toms-website/client/assets/icons/freeCodeCamp.svg
toms-website/client/assets/icons/CodeRoad.svg
toms-website/client/assets/icons/CodeAlly.svg
toms-website/client/assets/images
toms-website/client/assets/images/header.png
toms-website/client/assets/images/footer.jpeg
toms-website/client/assets/images/background.jpg
toms-website/client/assets/fonts
toms-website/client/assets/fonts/roboto-bold.woff
toms-website/client/assets/fonts/lato-bold.ttf
toms-website/client/assets/fonts/roboto-light.woff
toms-website/client/assets/fonts/lato-light.ttf
toms-website/server.js
toms-website/package.json
codeally@a105bd934250:~/project$ 

codeally@a105bd934250:~/project$ find website-boilerplate/
website-boilerplate/
website-boilerplate/.gitignore
website-boilerplate/README.md
website-boilerplate/client
website-boilerplate/client/src
website-boilerplate/client/src/index.js
website-boilerplate/client/src/index.html
website-boilerplate/client/src/styles.css
website-boilerplate/client/assets
website-boilerplate/client/assets/icons
website-boilerplate/client/assets/icons/freeCodeCamp.svg
website-boilerplate/client/assets/icons/CodeRoad.svg
website-boilerplate/client/assets/icons/CodeAlly.svg
website-boilerplate/client/assets/images
website-boilerplate/client/assets/images/header.png
website-boilerplate/client/assets/images/footer.jpeg
website-boilerplate/client/assets/images/background.jpg
website-boilerplate/client/assets/fonts
website-boilerplate/client/assets/fonts/roboto-bold.woff
website-boilerplate/client/assets/fonts/lato-bold.ttf
website-boilerplate/client/assets/fonts/roboto-light.woff
website-boilerplate/client/assets/fonts/lato-light.ttf
website-boilerplate/server.js
website-boilerplate/package.json
codeally@a105bd934250:~/project$ 



