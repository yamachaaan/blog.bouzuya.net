{Entry} = require '../models/entry'

class EntryService
  @fetch: ->
    entries = [1..30].map (i) ->
      date: '2015-04-' + (if i < 10 then '0' + i else i) + ''
      title: 'entry ' + i
      content: [1...i].map((j) ->
        '<p>あいうえおかきくけこさしすせそたちつてとなにぬねの</p>'
      ).join '\n'
    Entry.save entries

module.exports.EntryService = EntryService
