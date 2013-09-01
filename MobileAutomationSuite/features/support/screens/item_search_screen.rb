class ItemSearchScreen
  include Furter


  def search_for_item
    touch("view:'UITextFieldLabel' marked:'E.g. tote >20 or purse 20..40'")
    type_into_keyboard("3000")
    touch("view:'UIImageView' marked:'glyph-arrow.png'")





  end




end