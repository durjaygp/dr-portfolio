<?php

namespace App\Livewire\Pages;


use App\Models\WebsiteSetting;
use Livewire\Component;
use App\Models\Contact;

class ContactUs extends Component
{
    public $name;
    public $email;
    public $phone;
    public $message;

    protected $rules = [
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'phone' => 'required|string|max:20',
        'message' => 'required|string',
    ];

    public function submit()
    {
        $this->validate();

        Contact::create([
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'message' => $this->message,
        ]);

        // Reset fields
        $this->reset(['name', 'email', 'phone', 'message']);

        // Success message
        session()->flash('success', 'Your message has been sent successfully!');
    }

    public function render()
    {

        return view('livewire.pages.contact-us')->layout('layouts.app');
    }
}
