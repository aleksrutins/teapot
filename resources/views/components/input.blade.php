@props(['disabled' => false])

<input {{ $disabled ? 'disabled' : '' }} {!! $attributes->merge(['class' => 'rounded-md shadow-sm border-gray-300 focus:border-primary focus:ring focus:ring-emerald-200 focus:ring-opacity-50 dark:bg-black']) !!}>
