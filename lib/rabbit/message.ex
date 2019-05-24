defmodule Rabbit.Message do
  defstruct [
    :consumer,
    :channel,
    :payload,
    :decoded_payload,
    :meta
  ]

  @type t :: %__MODULE__{}

  def new(consumer, channel, payload, meta) do
    %__MODULE__{
      consumer: consumer,
      channel: channel,
      payload: payload,
      meta: meta
    }
  end
end