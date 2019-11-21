require "selenium-webdriver"

# Chromeドライバインスタンスを生成する
driver = Selenium::WebDriver.for :chrome

# URLにアクセスする
target_url = "https://orteil.dashnet.org/cookieclicker/"
driver.get target_url

# クリックしたいクッキーの要素を取得
click_cookie = driver.find_element(:id, "cookieAnchor")

sleep 2

# クッキーをクリックする
while true
  click_cookie.click
end
