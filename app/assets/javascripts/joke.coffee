class @Joke
  constructor: (@options) ->
    _ = @
    @joke = @options.element
    @joke_id = @joke.data('our-joke-id')
    @content = @joke.find('.content').first()
    @btnVote = @joke.find('.btn-vote')

    @btnVote.click ->
      if $(this).hasClass('like')
        like = 'true'
      else
        like = 'false'

      $.ajax
        type: 'GET'
        url: '/our_jokes/'+_.joke_id+'/vote?like='+like
        success: (data) ->
          if data.status
            if data.next_joke
              _.joke_id = data.next_joke['id']
              _.content.html(data.next_joke['content'].replace(/\n/g,"<br>"))     
            else
              _.btnVote.hide()
              alert("That's all the jokes for today! Come back another day!")
          else
            alert(data.notice)
      return false