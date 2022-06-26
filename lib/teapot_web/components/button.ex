defmodule TeapotWeb.Components.Button do
  use Phoenix.Component
  def button(assigns) do
    ~H"""
      <button
        class="border rounded-md px-2 shadow-sm hover:bg-gray-100 hover:border-gray-400 hover:shadow-md active:shadow-none transition"
      >
        <%= render_block(@inner_block) %>
      </button>
    """
  end
end
