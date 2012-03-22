module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def back_label(back_label)
    content_for(:back_label) { back_label }
  end
  
  def current_layout
    layout = controller.send(:_layout)
    if layout.instance_of? String
      layout
    else
      File.basename(layout.identifier).split('.').first
    end
  end
  
end
