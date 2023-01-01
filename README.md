# Phoenix API
Phoenix is a framework written in Elixir that allows you to create REST APIs.

To look for the installation informations:
- [Erlang](https://www.erlang.org/downloads)
- [Elixir](https://elixir-lang.org/install.html)
- [Phoenix](https://hexdocs.pm/phoenix/installation.html)

For the base creation of the project, we run the following command:
```elixir
    mix phx.new api --no-html
```

To create then new controllers for business listing for example, we can create a new Directory controller:
```elixir
    mix phx.gen.json Directory Business businesses name:string description:text tag:string
```
So we created a new Business data model, where it will store the name, description and tag.
And when we update the new router:
```elixir
    scope "/api", ApiWeb do
        pipe_through :api
        resources "/businesses", BusinessController, except: [:new, :edit]
    end
```
Will automatically make the get/post/patch/put.

For the testing, we can add some seed data:
```elixir
    alias BusiApi.Repo
    alias BusiApi.Directory.Business
    Repo.insert! %Business{name: "Company 1", description: "Short description ...", tag: "IT, Software"}
    Repo.insert! %Business{name: "Company 2", description: "Short description ...", tag: "Marketing"}
    Repo.insert! %Business{name: "Company 3", description: "Short description ...", tag: "Accounting"}
```