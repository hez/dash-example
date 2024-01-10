defmodule DashExampleWeb.CardsLive do
  use DashExampleWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.live_component
      module={HomeDashWeb.Cards}
      providers={[{HomeDash.Providers.Welcome, []}]}
      id="first"
    />
    """
  end

  @impl true
  def handle_info({:home_dash, :card, card, component_id}, socket)
      when is_struct(card, HomeDash.Card) do
    IO.inspect(card)
    send_update(HomeDashWeb.Cards, id: component_id, cards: card)

    {:noreply, socket}
  end

  def handle_info({:home_dash, :delete, _params}, socket) do
    {:noreply, socket}
  end
end
