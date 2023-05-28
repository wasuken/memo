# 移行スクリプト

## drepoからファイルパスを取得
top_path = '../../drepo'
drepo_path = "#{top_path}/**/*.md"
daily_map = {}
Dir.glob(drepo_path)[0,1].each do |filepath|
  # ここだるいからそのままやってるけど本来なら先頭からやらないとだめ
  key = filepath.gsub(top_path, '')
  daily_map[key] = '' unless daily_map[key]
  daily_map[key] += File.read(filepath)
end
## 日付ディレクトリまでがおなじファイルは結合
## 結合後"日付.md"として別途
## 旧ディレクトリは削除
