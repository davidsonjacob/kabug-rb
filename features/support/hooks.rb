Before do
  page.current_window.resize_to(1280, 768)
  visit "/"
end

After do |scenario|
  screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end
