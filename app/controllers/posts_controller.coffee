angular.module( 'app' ).controller
  postsController: ($rootScope, $scope, $location) ->

    $scope.posts = [
      {
        name: "Sam Soffes"
        avatar: "/avatars/sam-soffes-avatar.png"
        timeAgo: "3m"
        content: "How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!"
        expandable: true
        comments: [
          {
            name: "Jed Bridges"
            avatar: "/avatars/jed-bridges-avatar.png"
            timeAgo: "1h"
            content: "Jed Bridges Great way to start the week. Thanks for sharing!"
          },
          {
            name: "Ren Walker"
            avatar: "/avatars/ren-walker-avatar.png"
            timeAgo: "1h"
            content: "Ren Walker Feeling inspired now... thanks for great article @designmodo"
          }
        ]
      },

      {
        name: "Sam Soffes"
        avatar: "/avatars/sam-soffes-avatar.png"
        timeAgo: "3m"
        content: "How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!"
        expandable: true
        comments: [
          {
            name: "Jed Bridges"
            avatar: "/avatars/jed-bridges-avatar.png"
            timeAgo: "1h"
            content: "Jed Bridges Great way to start the week. Thanks for sharing!"
          },
          {
            name: "Ren Walker"
            avatar: "/avatars/ren-walker-avatar.png"
            timeAgo: "1h"
            content: "Ren Walker Feeling inspired now... thanks for great article @designmodo"
          }
        ]
      }
    ]

    # TODO: Refactor into a directive
    $scope.showComments = ($event) ->
      # Remove the bottom border and margin of the post when comments are open
      $($event.target).parent().addClass('expanded')
      # Toggle Expan / Collapse
      $($event.target).parent().find('.collapse-post').show()
      $($event.target).parent().find('.expand-post').hide()
      $($event.target).parent().find('.expand-chevron').addClass('open')
      # Show the comment container
      $($event.target).parent().parent().find('.comment-container').show()

    $scope.hideComments = ($event) ->
      # Remove the bottom border and margin of the post when comments are open
      $($event.target).parent().removeClass('expanded')
      # Toggle Expan / Collapse
      $($event.target).parent().find('.collapse-post').hide()
      $($event.target).parent().find('.expand-post').show()
      $($event.target).parent().find('.expand-chevron').removeClass('open')
      # Show the comment container
      $($event.target).parent().parent().find('.comment-container').hide()