<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * 定义应用的 Artisan 命令。
     *
     * @var array
     */
    protected $commands = [
        \App\Console\Commands\CrabCommand::class, // 添加您的 CrabCommand
    ];

    /**
     * 定义应用的调度任务。
     */
    protected function schedule(Schedule $schedule)
    {
        // 每 5 分钟运行一次 CrabCommand
        $schedule->command('app:crab-command')->everyFiveMinutes();

        // 添加其他任务调度（如果有）
        // 示例: $schedule->command('another:command')->daily();
    }

    /**
     * 注册 Artisan 命令以便 CLI 使用。
     */
    protected function commands()
    {
        require base_path('routes/console.php');
    }
}
