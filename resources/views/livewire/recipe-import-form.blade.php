<div class="p-4 space-y-4">
    <h2 class="text-xl font-semibold text-gray-800">📥 Import Recipes from CSV</h2>

    @if(session('success'))
        <div class="text-green-600 bg-green-100 p-3 rounded-lg border border-green-300">
            {{ session('success') }}
        </div>
    @endif

    <form action="{{ route('recipes.import') }}" method="POST" enctype="multipart/form-data" class="space-y-4">
        @csrf

        <div>
            <label for="csv_file" class="block text-sm font-medium text-gray-700">Choose CSV File</label>
            <input
                type="file"
                name="csv_file"
                id="csv_file"
                required
                class="mt-1 block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-white focus:outline-none focus:ring-2 focus:ring-primary-500"
            >
        </div>

        <div class="text-right">
            <button
                type="submit"
                class="inline-flex items-center px-4 py-2 bg-primary-600 text-white text-sm font-medium rounded-md hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-primary-500"
            >
                📤 Import
            </button>
        </div>
    </form>
</div>
