module.exports =
  unary:
    localstorage: (exe, params) ->
      getsource = exe.build params.__s
      (cb) ->
        getsource (err, source) ->
          return cb err if err?
          try
            cb null, localStorage[source]
          catch e
            cb e