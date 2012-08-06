Fs = require('fs')


# Use [node-postgres](ttps://github.com/brianc/node-postgres) driver.
class Pg extends Postgresql

  # Executes SQL script file.
  #
  # @param {String} Path to script. Driver handles multiple statements terminated by semicolon.
  execFile: (filename, cb) ->
    Fs.readFile filename, 'utf8', (err, data) =>
      return cb(err) if err

      @exec data, cb
