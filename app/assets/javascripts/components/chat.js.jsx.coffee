$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="CommentBox">Hello, world! I am a CommentBox.</div>`

  React.render `<CommentBox />`, document.getElementById('content')