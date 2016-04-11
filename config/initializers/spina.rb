Spina.configure do |config|
  config.NEGATIVE_CAPTCHA_SECRET = '0d63e50283c4781fa9a3a7a6d3270177051994f31510beea472c10e9a1562ccf74b4b46b0fdfb31122ec82d17877950a1fdf443c9b7011005771e06ed1e2cbf2'

  # Set locales
  config.locales = [:en]

  # Important Note
  # ==============

  # You MUST restart your server before changes to this file
  # will take effect.

  # Specify a backend path. Defaults to /admin.
  # config.backend_path = 'admin'

  # Pages Options
  # ===============

  # Note that you might need to remove cached asset after changing this value
  # config.max_page_depth = 5
end
