class WinLayer < Joybox::Core::Layer
  scene

  def on_enter
    title = Label.new text: "You Win!", font_size: 48, position: [Screen.half_width, Screen.half_height + 50]
    self << title
    handle_touches
  end

  def handle_touches
    puts "step1"
    on_touches_ended do |touch, event|
      puts "step2"
      Joybox.director.replace_scene GridLayer.scene
    end
  end
end