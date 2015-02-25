angular.module( 'app' ).controller
  postsController: ($rootScope, $scope, $location) ->
 
     

    $scope.posts = [
      {
        name: "Sam Soffes"
        avatar: "/avatars/sam-soffes-avatar.png"
        timeAgo: "3m"
        content: "How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!"
        expandable: true
        type: 'post'
        photo: false
        video: false
        comments: [
          {
            name: "Jed Bridges"
            avatar: "/avatars/jed-bridges-avatar.png"
            timeAgo: "1h"
            content: "Great way to start the week. Thanks for sharing!"
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
        name: "Meg Robichaud"
        avatar: "/avatars/meg-robichaud.png"
        timeAgo: "25m"
        content: "My view this morning is simply beautiful... instagram.com/p/mV0PUrHRwQ/"
        expandable: false
        type: 'photo'
        photo: true
        video: false
        photoUrl: '/photos/water-cove.png'
      },
      {
        name: "Kerem Suer"
        avatar: "/avatars/kerem-suer.png"
        timeAgo: "50m"
        content: "8 Apps to Turn Your Pipe Dreams Into Prototypes on.mash.to/1oubyu8"
        expandable: false
        type: 'post'
        photo: false
        video: false
      },
      {
        name: "Liang Shi"
        avatar: "/avatars/liang-shi.png"
        timeAgo: "1h"
        content: "How to get animations out of your head. http://bit.ly/1q7BngO Funny and useful."
        expandable: false
        type: 'post'
        photo: false
        video: false
      },
      {
        name: "Vitor Leal"
        avatar: "/avatars/vitor-leal.png"
        timeAgo: "50m"
        content: "You have to see this bike. It will make your daily commute a absolute joy ride! vimeo.com/p/mV0PUrHRwQ/"
        expandable: false
        type: 'post'
        photo: false
        video: true
        videoUrl: '/videos/bike-river.png'
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