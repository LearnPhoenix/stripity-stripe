defmodule Stripe.CouponsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  @tags disabled: false
  test "Validate coupon with coupon id" do

    params = "free-1-month"

    case Stripe.Coupons.retrieve(params) do
      {:ok, res} ->
        assert res.id == params
      {:error, err} -> flunk err
    end
  end


  # @tags disabled: false
  # test "Create bank account token works"  do
  #   use_cassette "tokens_test/bank_account", match_requests_on: [:query, :request_body] do
  #     params = [
  #       bank_account: [
  #         country: "US",
  #         currency: "usd",
  #         routing_number: "110000000",
  #         account_number: "000123456789"
  #       ]
  #     ]
  #     case Stripe.Tokens.create(params) do
  #       {:ok, res} ->
  #         #Apex.ap res
  #         assert res.id
  #         assert res.type == "bank_account"
  #         {:error, err} -> flunk err
  #     end
  #   end
  # end

end
