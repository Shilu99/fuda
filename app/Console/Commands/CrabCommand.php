<?php

namespace App\Console\Commands;

use App\Models\Video;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class CrabCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:crab-command';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '抓取数据';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->crab();

    }

    private function crab() {
        // API URL
    $apiUrl = "https://apiyutu.com/api.php/provide/vod/?ac=detail";
  
    try {
      // Send GET request with SSL verification disabled and get JSON response
      $response = Http::withOptions(['verify' => false])->get($apiUrl);
    
      // Check if the request was successful
      if ($response->successful()) {
        // Parse JSON response to a PHP array
        $data = $response->json();
        // dd($data);
        // Check if 'list' key exists in the response
        if (isset($data['list']) && is_array($data['list'])) {
          // Iterate over the data and save it to the database
          foreach ($data['list'] as $key => $videoData) {
            // dd($videoData);
            $url = $data['list'][$key]['vod_play_url'];
            $data['list'][$key]['vod_name'] = mb_substr($videoData['vod_name'], 0, 30, "UTF-8");
            // Remove any unwanted prefix like "第1集$"
            $url = preg_replace('/^第\d+集\$/', '', $url);
  
            Video::updateOrCreate(
                [                
                   'vod_id' => $videoData['vod_id'], // Unique constraint 
                   'vod_class' => $videoData['vod_class'],           
                   'vod_pic' => $videoData['vod_pic'],
                   'vod_name' => $videoData['vod_name'],
                   'vod_play_url' => $url,
                   'type_name' => $videoData['type_name'],
                   'created_at' => now(),
                   'updated_at' => now(),
                ]
             );
             
          }              
          echo "Data Collection Success";
       
        } else {
          return response()->json(['error' => 'Invalid data format in API response'], 422);
        }
      } else { 
        Log::info('Failed to fetch data');
      }
    } catch (\Exception $e) { 
        Log::info($e->getMessage());
    }
        
    }
    public function shishi(){
        echo "我是宝贝";
    }
}
