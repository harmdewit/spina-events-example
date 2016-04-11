module Events
  class Engine < ::Rails::Engine

    initializer 'spina.plugin.register.events', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Events'
        plugin.namespace  = 'events'
      end
    end

  end
end
