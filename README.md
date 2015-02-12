Working example [here](http://trelloblog.divshot.io/) based on [this Trello board](https://trello.com/b/A3rqsy0f).

## Use Trello as your blog backend

- Clone this repository.
- Install all the dependencies with `bundle install`.
- Run the Middleman demo server with `middleman`.
- Create a new Trello board.
- In `source/initializers/config.coffee` set both the API key and your board ID.
- Every column is now a category and every card is a blog post, that's all.

## Host it on Divshot

- [Install Divshot](http://docs.divshot.com/guides/getting-started).
- Create your Divshot app `divshot config:add name my_blog`.
- Edit `divshot.json` configuration file to include `"root": "./build"`.
- Run `middleman build`.
- Push your Divshot application with `divshot push`.
