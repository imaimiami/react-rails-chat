$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="commentBox">
         <h1>Comment</h1>
         <CommentList data={ this.props.data } />
         <CommentForm />
       </div>`

  CommentList = React.createClass
    render: ->
      commentNodes = @props.data.map (comment) ->
        `<Comment author={ comment.author }>{ comment.text }</Comment>`
      `<div className="commentList">{ commentNodes }</div>`

  CommentForm = React.createClass
    render: ->
      `<div className="commentForm">
         Hello world! I am a CommentForm.
       </div>`

  Comment = React.createClass
    render: ->
      `<div className="comment">
         <h2 className="commentAuthor">{ this.props.author }</h2>
         <span>{ this.props.children }</span>
       </div>`

  data = [
    { author: 'Pete Hunt', text: 'This is one comment.' }
    { author: 'Jorden Walke', text: 'This is *another* comment.' }
  ]

  React.render `<CommentBox data={ data } />`, document.getElementById('content')