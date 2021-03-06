defmodule BadMammaJamma.Router do
  use BadMammaJamma.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BadMammaJamma do
    pipe_through :browser # Use the default browser stack

    get "/", JamController, :index
    resources "/jams", JamController
  end

  # Other scopes may use custom stacks.
  # scope "/api", BadMammaJamma do
  #   pipe_through :api
  # end
end
