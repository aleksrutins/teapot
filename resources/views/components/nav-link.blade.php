@props(['active'])

@php
$classes = ($active ?? false)
            ? 'flex sm:justify-center items-center px-3 py-2 mt-1 rounded bg-emerald-50/50 dark:bg-emerald-900/50 text-sm text-primary font-medium leading-5 focus:outline-none focus:border-primary transition duration-150 ease-in-out'
            : 'flex sm:justify-center items-center px-3 py-2 mt-1 text-sm font-medium leading-5 text-gray-500 hover:text-gray-700 hover:bg-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300 transition duration-150 ease-in-out';
@endphp

<a {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>
