<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <h1 class="text-3xl text-gray-700 dark:text-gray-300 font-extrabold mb-2">Welcome!</h1>
            <x-card>
                <h2 class="text-xl text-gray-600 dark:text-gray-400 font-bold mb-1">Your Projects</h2>
                <livewire:projects-list />
            </x-card>
        </div>
    </div>
</x-app-layout>
