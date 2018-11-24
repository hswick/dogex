defmodule Dogex do

  def send_request(method, params \\ []) do
    result = HTTPoison.post(
	  rpc_url(),
	  Jason.encode!(
	    %{
	      jsonrpc: "1.0",
	      method: method,
	      params: params
	    }
	  )
    )

    case result do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
	{:ok, Map.get(Jason.decode!(body), "result")}
      {:ok, %HTTPoison.Response{status_code: 500, body: body}} ->
	error = Map.get(Jason.decode!(body), "error")
	{:error, Map.get(error, "message")}
      {:ok, %HTTPoison.Response{status_code: 404}} ->
	{:error, :not_found}
      {:error, %HTTPoison.Error{reason: reason}} ->
	{:error, reason}
    end
    
  end

  def rpc_url() do
    username = Application.get_env(:dogex, :username)
    password = Application.get_env(:dogex, :password)
    port = Application.get_env(:dogex, :port)
    "http://#{username}:#{password}@localhost:#{port}"
  end

  def get_info do
    send_request("getinfo")
  end

  def get_new_address do
    send_request("getnewaddress")
  end

  def get_raw_transaction(tx_hash) do
    send_request("getrawtransaction", [tx_hash])
  end

  def get_block(block_hash) do
    send_request("getblock", [block_hash])
  end

  def get_block_count do
    send_request("getblockcount")
  end

  def get_block_hash(index) do
    send_request("getblockhash", [index])
  end

  def get_difficulty do
    send_request("getdifficulty")
  end

  def get_transaction(tx_id) do
    send_request("gettransaction", [tx_id])
  end

  def send_raw_transaction(raw_tx) do
    send_request("sendrawtransaction", [raw_tx])
  end

  def get_account(address) do
    send_request("getaccount", [address])
  end

  def list_accounts do
    send_request("listaccounts")
  end

  def sign_message(address, message) do
    send_request("signmessage", [address, message])
  end

  def verify_message(address, signature, message) do
    send_request("verifymessage", [address, signature, message])
  end

  def decode_raw_transaction(raw_tx) do
    send_request("decoderawtransaction", [raw_tx])
  end
end
