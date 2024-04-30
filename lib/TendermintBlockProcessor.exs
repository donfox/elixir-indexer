import PG2



defmodule TendermintBlockProcessor do

  @compile {:nowarn,:all}

  @block_chain_url "http://116.202.143.93:1317/cosmos/base/tendermint/v1beta1/blocks/%d"
  @local_block_dir "./tendermint"
  @db_config [
    database: "indexer_lite",
    user: "donfox1",
    password: "xofnod",
    host: "localhost",
    port: 5432
  ]

  @num_blocks 75
  @min_file_size 35000
  @start_height 6230625

  def inform_database(_data, _txs, _db_connection, _cursor) do
    IO.puts("\n\t\t[2]--- migaloows.inform_database() -----[2]")
    # Your Elixir code for informing the database goes here
  end

  def download_and_check_blocks(_db_connection, _cursor) do
    IO.puts("  \n\t\t[1]--- migaloows.download_and_check_blocks() -----[1]")
    # Your Elixir code for downloading and checking blocks goes here
  end

  def start() do
    case PG2.connect(@db_config) do
      {:ok, conn} ->
        download_and_check_blocks(conn, PG2.cursor(conn))
      {:error, reason} ->
        IO.puts("Failed to connect with DB: #{reason}")
    end
  end
  
end
