angular.module("trelloBlog").config (RestangularProvider, config) ->
  RestangularProvider.setBaseUrl "https://api.trello.com/1/"
  RestangularProvider.setDefaultRequestParams {key: config.apiKey}