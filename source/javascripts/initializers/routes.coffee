angular.module("trelloBlog").config ($stateProvider, $urlRouterProvider, config) ->
  $urlRouterProvider.otherwise "/board/lists"
  $stateProvider
    .state "board",
      url: "/board"
      templateUrl: "partials/board.html"
      controller: "BoardController"
      resolve:
        board: (Restangular) ->
          Restangular.one("boards", config.board).get()

    .state "board.lists",
      url: "/lists"
      templateUrl: "partials/lists.html"
      controller: "ListsController"
      resolve:
        lists: (Restangular) ->
          Restangular.one("boards", config.board).all("lists").getList(cards: 'open')

    .state "board.lists.card",
      url: "/:id"
      templateUrl: "partials/card.html"
      controller: "CardController"
      resolve:
        card: (Restangular, $stateParams) ->
          Restangular.one("cards", $stateParams.id).get()
