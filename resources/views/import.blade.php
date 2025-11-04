<!DOCTYPE html>
<html>
<head>
    <title>Import Recipes</title>
</head>
<body>
<h2>Import Recipes from CSV</h2>

@if(session('success'))
    <p style="color: green;">{{ session('success') }}</p>
@endif

<form action="{{ route('recipes.import') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="file" name="csv_file" required>
    <button type="submit">Import</button>
</form>
</body>
</html>
