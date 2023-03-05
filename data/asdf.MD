## ASDF

I have setup asdf on my mac to learn elixir, I did not want to go down the docker route mainly because I needed something that worked and something that would keep me focussed.

## Installation

Install the Elixir and Erlang plugins for asdf
```
asdf plugin add erlang
asdf plugin add elixir
```

List all the versions of erlang
```
asdf list-all erlang
```

Set local erlang and elixir versions
```
asdf local erlang 23.2.1
asdf local elixir 1.11.2-otp-23
```