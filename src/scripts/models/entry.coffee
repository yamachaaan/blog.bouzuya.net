{EventEmitter} = require 'events'

class Entry
  @_instance: null

  @getInstance: ->
    @_instance = new Entry() unless @_instance?
    @_instance

  constructor: ->
    @_entries = []
    @_entry = null
    @_start = 0
    @_end = 30
    @_emitter = new EventEmitter()
    @_query = ''
    @_searchVisible = false

  getAll: ->
    { entries } = @_getFilteredEntries()
    entries

  getEventEmitter: ->
    @_emitter

  getLimit: ->
    start: @_start
    end: @_end

  getQuery: ->
    @_query

  getSearchVisible: ->
    @_searchVisible

  getSelectedEntry: ->
    @_entry

  saveAll: (entries) ->
    @_entries = entries
    @_emitFilteredEntries()

  saveLimit: (start, end) ->
    @_start = start
    @_end = end
    @_emitFilteredEntries()

  saveOne: (entry) ->
    filtered = @_entries.filter((i) -> i.date is entry.date)[0]
    return unless filtered?
    filtered.title = entry.title
    filtered.content = entry.content
    @_emitter.emit 'entry-changed', filtered

  saveQuery: (text) ->
    @_query = text
    @saveSearchVisible(false) if text.length is 0
    @_emitter.emit 'query-changed', text
    @_emitFilteredEntries()

  saveSearchVisible: (isVisible) ->
    @_searchVisible = isVisible
    @_emitter.emit 'search-visible-changed', isVisible

  select: (entry) ->
    @_entry = entry
    @_emitter.emit 'selected', @_entry

  _getFilteredEntries: ->
    searched = @_entries.filter (i) =>
      i.title.match(@_query) or
      i.tags.some((i) => i.match(@_query)) or
      i.date.match(@_query)
    paged = searched.filter (_, index) =>
      @_start <= index and index <= @_end
    entries: paged
    hasNext: searched.length > @_end - @_start

  _emitFilteredEntries: ->
    @_emitter.emit 'entries-changed', @_getFilteredEntries()

module.exports = ->
  Entry.getInstance()

module.exports.Entry = Entry
