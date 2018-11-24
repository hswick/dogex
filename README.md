# Dogex

Simple and fast Http client for dogecoin. But could work for Bitcoin and forks.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `dogex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:dogex, "~> 0.1.0"}
  ]
end

def application do
  [applications: [:dogex]]
end  
```

These variables are used to generate the RPC url. Make sure you have them set in `~/.dogecoin/dogecoin.conf`.

Set the config:
```
config :dogex,
  username: "rpcusername",
  password: "rpcpassword",
  port: 4242
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/dogex](https://hexdocs.pm/dogex).

