<?php

namespace App\Console\Commands;

use App\Imports\CarpetImport;
use Illuminate\Console\Command;
use Maatwebsite\Excel\Facades\Excel;

class ImportProducts extends Command
{
    protected $signature = 'import:products {file}';
    protected $description = 'Import products from a CSV file with progress bar';

    public function handle()
    {
        $filePath = $this->argument('file');

        if (!file_exists($filePath)) {
            $this->error("❌ File not found: $filePath");
            return 1;
        }

        try {
            // ✅ Pass console output to the import class
            Excel::import(new CarpetImport($this->output), $filePath);
            $this->info("✅ Product import completed successfully.");
        } catch (\Exception $e) {
            $this->error("❌ Import failed: " . $e->getMessage());
        }

        return 0;
    }

}
