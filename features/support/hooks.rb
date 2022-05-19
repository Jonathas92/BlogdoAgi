Before do
    page.current_window.resize_to(1366, 768)
  end
  
  After do |cenario|
    @nome = cenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, "")
    shot = page.save_screenshot("screenshots/#{@nome}.png")
  end