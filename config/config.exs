import Config

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

if Mix.env() == :test && File.exists?("config/test.secret.exs") do
  import_config "test.secret.exs"
end
