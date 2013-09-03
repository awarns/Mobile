class ItemScreen
  include Furter



  def search_for_item(item)

    touch("view:'UITextFieldLabel' marked:'E.g. tote >20 or purse 20..40'")
    type_into_keyboard("#{item}")
    touch("view:'UIImageView' marked:'glyph-arrow.png'")
    sleep(5)
    @item = item


  end


  def item_exists

    has_text?("#{@item}")

  end

  def personalize_with_embroidery

    touch( "view:'UILabel' marked:'Tap to Select'")
    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'Black'")
    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'Tap to Select'")
    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'Embroidery - add $7'")
    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'Tap to Select'")

    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'30'")



    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'Tap to Select'")
    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'Aqua'")
    sleep(2)
    #wait_for_and_touch("view:'UITextFieldLabel' marked:'Text (3 character max)'")
    #type_into_keyboard('AMW')
    #touch("view:'UIButtonLabel' marked:'Save & Add to Cart'")



  end


end