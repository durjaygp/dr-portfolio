<div>
    @if (session()->has('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <form wire:submit.prevent="submit" class="wow fadeInUp" data-wow-delay="0.5s">
        <div class="row">
            <!-- Full Name -->
            <div class="form-group col-md-12 mb-4">
                <label for="full_name">Full Name</label>
                <input type="text" wire:model.defer="full_name" class="form-control" id="full_name" placeholder="Enter Your Name" required>
            </div>

            <!-- Email -->
            <div class="form-group col-md-6 mb-4">
                <label for="email">Email</label>
                <input type="email" wire:model.defer="email" class="form-control" id="email" placeholder="Enter Your Email" required>
            </div>

            <!-- Phone -->
            <div class="form-group col-md-6 mb-4">
                <label for="phone">Phone Number</label>
                <input type="text" wire:model.defer="phone" class="form-control" id="phone" placeholder="Enter Your Number" required>
            </div>

            <!-- Appointment Preferences -->
            <div class="col-md-12 mb-4">
                <label>Appointment Preferences</label><br>
                @foreach(['Monday','Tuesday','Wednesday','Thursday','Friday'] as $day)
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" wire:model.defer="preferences" value="{{ $day }}">
                        <label>{{ $day }}</label>
                    </div>
                @endforeach
            </div>

            <!-- Patient Type -->
            <div class="col-md-12 mb-4">
                <label>Patient Type</label><br>
                @foreach(['New Patient','Existing Patient'] as $type)
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" wire:model.defer="patient_type" value="{{ $type }}" required>
                        <label>{{ $type }}</label>
                    </div>
                @endforeach
            </div>

            <!-- Services -->
            <div class="col-md-12 mb-4">
                <label>Service Interested In</label>
                <select wire:model.defer="service" class="form-select" required>
                    <option value="">(Select)</option>
                    @foreach([
                        'Botox','CEREC','Cosmetic Dentistry','Dental Bridges','Dental Crowns','Dental Emergencies',
                        'Dental Implants','Dentures & Partials','Extractions','Fillings','Inlays & Onlays','Invisalign',
                        'Oral Appliances','Pediatric Dentistry','Periodontal Therapy','Root Canals','Teeth Cleaning',
                        'Teeth Whitening','TMJ / TMD','Veneers','Wisdom Teeth','Other'
                    ] as $service)
                        <option value="{{ $service }}">{{ $service }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Emergency -->
            <div class="col-md-12 mb-4">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" wire:model.defer="emergency" value="1">
                    <label class="text-danger fw-bold">I am in pain and need a Dentist right now!</label>
                </div>
            </div>

            <!-- Referral -->
            <div class="col-md-12 mb-4">
                <label>How did you hear about us?</label>
                <select wire:model.defer="referral" class="form-select" required>
                    <option value="">(Select)</option>
                    <option value="Search Engine">Search Engine</option>
                    <option value="Social Media">Social Media</option>
                    <option value="Friend Referral">Friend Referral</option>
                    <option value="Driving By">Driving By</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <!-- Message -->
            <div class="form-group col-md-12 mb-4">
                <label>Message</label>
                <textarea wire:model.defer="message" class="form-control" rows="5" placeholder="Write your message..." required></textarea>
            </div>

            <!-- Submit -->
            <div class="col-md-12">
                <button type="submit" class="btn-default btn-highlighted w-100">Submit Now</button>
            </div>
        </div>
    </form>
</div>
