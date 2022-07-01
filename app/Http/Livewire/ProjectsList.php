<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ProjectsList extends Component
{
    public $count = 0;

    public function increment()
    {
        $this->count++;
    }

    public function decrement()
    {
        $this->count--;
    }

    public function render()
    {
        return view('livewire.projects-list');
    }
}
