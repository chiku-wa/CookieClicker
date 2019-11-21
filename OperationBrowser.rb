require "selenium-webdriver"

# Chromeドライバインスタンスを生成する
driver = Selenium::WebDriver.for :chrome

# URLにアクセスする
target_url = "https://google.co.jp"
driver.get target_url

# 検索ボックスの要素をname属性から取得する
search_box = driver.find_element(:name, "q")

# キーワードを入力して検索する
search_box.send_keys "Ruby on Rails"
search_box.submit
