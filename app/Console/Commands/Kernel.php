<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    protected $commands = [
        \App\Console\Commands\CrabCommand::class,
    ];

    protected function schedule(Schedule $schedule)
    {
        // 每小时运行一次
        $schedule->command('app:crab-command')->timezone('UTC')->everyMinute();
    }

    protected function commands()
    {   
        $this->load(DIR . '/Commands');
        require base_path('routes/console.php');
    }
}
