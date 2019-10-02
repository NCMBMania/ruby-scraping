class TestScript
  PATH = "scraping.rb"
  CODE = File.read(PATH)
  # デバッグするスクリプトを読み込む
  eval(CODE, binding, fname=PATH)
end

# 読み込んだスクリプトをハンドラーとして定義
map("/scraping.rb") do
  run TestScript.new
end
