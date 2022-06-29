@props(['type' => 'normal'])

@php
switch($type) {
    case 'inline':
        $styles = 'border dark:border-slate-700';
        break;
    case 'normal':
    default:
        $styles = 'shadow-sm';
        break;
}
@endphp

<div class="bg-white p-6 dark:bg-slate-900 overflow-auto {{ $styles }} sm:rounded-lg">
    {{ $slot }}
</div>
