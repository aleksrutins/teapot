defmodule TeapotWeb.Components.Sidebar do
  use Phoenix.Component
  import Phoenix.HTML.Link
  @compile {:no_warn_undefined, {Routes, :live_dashboard_path, 2}}
  def sidebar_link(assigns) do
    ~H"""
      <a
        class="block px-4 py-2 rounded bg-slate-800 hover:bg-slate-700 focus:outline-none focus:bg-gray-100 focus:text-gray-900 transition"
        href={@href}
      >
        <%= assigns[:text] %>
      </a>
    """
  end
  def sidebar(assigns) do
    ~H"""
      <div class="bg-slate-900 flex flex-col justify-between p-2">
        <div class="flex flex-col">
          <.sidebar_link text="Home" href="/"/>
        </div>
        <div class="flex flex-col">
          <.sidebar_link text="About" href="/about"/>
          <%= if function_exported?(Routes, :live_dashboard_path, 2) do %>
            <%= link "LiveDashboard", to: Routes.live_dashboard_path(@conn, :home) %>
          <% end %>
        </div>
      </div>
    """
  end
end
