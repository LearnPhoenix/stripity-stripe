defmodule Stripe.Coupons do
  @moduledoc """
  Handles coupons to the Stripe API.
  (API ref: https://stripe.com/docs/api#coupons)

  Operations:
  - create (TODO)
  - retrieve
  - update (TODO)
  - delete (TODO)
  - list (TODO)
  """

  @endpoint "coupons"

  @doc """
  Retrieves the coupon with the given ID.
  Returns a coupon if a valid coupon ID was provided.
  Throws an error otherwise.

  ## Examples
  ```
    params = "free-1-month"

    {:ok, result} = Stripe.Coupons.retrieve params
  ```
  """
  def retrieve(params) do
    retrieve params, Stripe.config_or_env_key
  end

  @doc """
  Same as `retrieve/1` using a given stripe key to apply against the account associated.

  ## Examples

  {:ok, result} = Stripe.Coupons.retrieve params
  """
  def retrieve(params, key) do
    Stripe.make_request_with_key(:get, @endpoint, key, params)
    |> Stripe.Util.handle_stripe_response
  end

end
