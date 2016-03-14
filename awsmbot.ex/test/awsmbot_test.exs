defmodule AwsmbotTest do
  use ExUnit.Case
  doctest Awsmbot

  test "" do
    refute nil == System.get_env "SLACK_TOKEN"
    
  end
end
