defmodule TeapotWeb.Components.Button do
  use Phoenix.Component
  defp styles(primary) do
    background = if primary do
      "text-white border-teal-600 bg-teal-600 hover:bg-teal-700 hover:border-teal-700"
    else
      "dark:border-gray-600 dark:bg-gray-800 hover:border-gray-400 dark:hover:border-gray-700"
    end
    "border rounded-md px-2 shadow-sm dark:shadow-gray-800 #{background} hover:shadow-md active:shadow-none transition"
  end
  def button(assigns \\ [primary: false]) do
    ~H"""
      <button
        class={styles(assigns[:primary])}
      >
        <%= render_block(@inner_block) %>
      </button>
    """
  end
end
