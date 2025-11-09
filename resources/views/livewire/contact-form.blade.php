<div class="py-20 bg-white">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-4xl font-extrabold text-primary mb-6 text-center">Contact Kimberly J. Shapkin</h2>
        <p class="text-xl text-center text-gray-600 mb-12">
            For general inquiries, clinical consultation requests, or to book a speaking engagement, please fill out the form below.
        </p>

        @if (session()->has('success'))
            <div class="mb-6 text-center text-green-600 font-semibold">
                {{ session('success') }}
            </div>
        @endif

        <form wire:submit.prevent="submit" class="space-y-6">
            <div class="grid sm:grid-cols-2 gap-6">
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">Full Name</label>
                    <input type="text" wire:model="name" id="name" placeholder="Full Name" class="mt-1 block w-full rounded-md border border-gray-300 shadow-sm p-3 focus:border-primary focus:ring-primary transition duration-150">
                    @error('name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                </div>
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">Email Address</label>
                    <input type="email" wire:model="email" id="email" placeholder="Email Address" class="mt-1 block w-full rounded-md border border-gray-300 shadow-sm p-3 focus:border-primary focus:ring-primary transition duration-150">
                    @error('email') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                </div>
            </div>

            <div>
                <label for="subject" class="block text-sm font-medium text-gray-700">Subject / Inquiry Type</label>
                <input type="text" wire:model="subject" id="subject" placeholder="Subject / Inquiry Type" class="mt-1 block w-full rounded-md border border-gray-300 shadow-sm p-3 focus:border-primary focus:ring-primary transition duration-150 bg-white">
                @error('subject') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div>
                <label for="message" class="block text-sm font-medium text-gray-700">Message</label>
                <textarea wire:model="message" id="message" rows="5" placeholder="Tell us more about your request..." class="mt-1 block w-full rounded-md border border-gray-300 shadow-sm p-3 focus:border-primary focus:ring-primary transition duration-150"></textarea>
                @error('message') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
            </div>

            <div class="text-center">
                <button type="submit" class="inline-block bg-primary hover:bg-opacity-90 text-white font-bold text-lg py-3 px-10 rounded-full shadow-xl transition duration-300 transform hover:scale-105 border-2 border-primary">
                    Send Message
                </button>
            </div>
        </form>
    </div>
</div>
