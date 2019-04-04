require 'google/apis/youtube_v3'
require 'json'





 def get_service(str="サンプル")
   
   youtube = Google::Apis::YoutubeV3::YouTubeService.new
   youtube.key =ENV['YOUTUBE_APPLICATION_ID']#.envから環境変数の読み出し　gem'dotenv-rails'が必要
   list_searches= youtube.list_videos("id,snippet,statistics", max_results: 50, id: "video_id,video_id,...")
   list= list_searches.to_h

end
