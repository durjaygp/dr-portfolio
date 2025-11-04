<?php

namespace App\Livewire;

use App\Models\Appointment;
use Livewire\Component;

class AppointmentForm extends Component
{
    public $full_name, $email, $phone, $preferences = [], $patient_type, $service, $emergency = false, $referral, $message;

    protected $rules = [
        'full_name' => 'required|string|max:255',
        'email' => 'required|email',
        'phone' => 'required|string|max:20',
        'preferences' => 'nullable|array',
        'patient_type' => 'required|string',
        'service' => 'required|string',
        'emergency' => 'boolean',
        'referral' => 'required|string',
        'message' => 'required|string',
    ];

    public function submit()
    {
        $this->validate();

        Appointment::create([
            'full_name' => $this->full_name,
            'email' => $this->email,
            'phone' => $this->phone,
            'preferences' => json_encode($this->preferences),
            'patient_type' => $this->patient_type,
            'service' => $this->service,
            'emergency' => $this->emergency,
            'referral' => $this->referral,
            'message' => $this->message,
        ]);

        session()->flash('success', 'Appointment submitted successfully!');
        $this->reset(); // Reset form fields
      //  $this->emit('closeModal'); // If using modal
    }

    public function render()
    {
        return view('livewire.appointment-form');
    }


}
