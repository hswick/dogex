# Dogex

Simple and fast http client for dogecoin. Should work for Bitcoin and forks/friends.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `dogex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:dogex, "~> 0.1.1"}
  ]
end

def application do
  [applications: [:dogex]]
end  
```

These variables are used to generate the RPC url. Make sure you have them set in `~/.dogecoin/dogecoin.conf`.
Go [here](https://github.com/dogecoin/dogecoin/blob/master/contrib/debian/examples/dogecoin.conf) for a well documented example of the possible dogecoin config settings.

Set the elixir application's config:
```elixir
config :dogex,
  username: "rpcusername",
  password: "rpcpassword",
  port: 4242
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/dogex](https://hexdocs.pm/dogex).

