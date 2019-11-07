require 'CSV'
require 'json'

results = {
  '1996 牛罵頭音樂節' => [],
  '彼得・密勒古列鋼琴三重奏' => [],
  '墨西哥民俗樂公演' => [],
  '郭芝苑作品音樂會' => [],
  '簡名彥與名弦四重奏' => [],
  '其他' => []
}
# 分類	活動名稱	日期	照片編號	排序	類型	標題	作者   	Subject 主題類別*	Keywords 關鍵字*	Description 簡述*   	Date 日期*   	Type 資源類型*   	Right 著作權* 	格式* (Format)  	替代的標題 (Alternative title)  	物件編號
headers = %i(category name long_date photos order event_type title author subject keywords description date type right format alternative_title no)
CSV.read('./sheet.csv', headers: headers).each_with_index do |row, i|
  next if i == 0
  event = {
    order: row[:order],    
    photos: row[:photos].gsub(' ', '').split(','),
    title: row[:title],
    date: row[:date],
    description: row[:description],
    author: row[:author],
    subject: row[:subject],
    rights: row[:rights],
    keywords: row[:keywords].gsub(' ', '').split(',')
  }

  results[row[:category]] << event
end

['1996 牛罵頭音樂節', '彼得・密勒古列鋼琴三重奏', '墨西哥民俗樂公演', '郭芝苑作品音樂會', '簡名彥與名弦四重奏', '其他'].each do |k|
  results[k] = results[k].sort { |a, b| a[:order] <=> b[:order] }
end

File.open('./events.json', 'w') do |f|
  f << results.to_json
end