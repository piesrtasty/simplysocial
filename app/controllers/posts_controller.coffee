angular.module( 'app' ).controller
  postsController: ($rootScope, $scope, $location) ->

  	$scope.posts = [
  		{
        name: "Sam Soffes"
        avatar: "/avatars/sam-soffes-avatar.png"
        timeAgo: "3m"
        content: "How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!"
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