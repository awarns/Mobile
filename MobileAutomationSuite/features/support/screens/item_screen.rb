class ItemScreen
  include Furter

  DEFAULT_DATA ={
      'item' => '3000',
      'color' => 'Black'
  }


  def search_for_item(data = {})
    data = DEFAULT_DATA.merge(data)
    touch("view:'UITextFieldLabel' marked:'E.g. tote >20 or purse 20..40'")
    sleep(2)
    type_into_keyboard(data['item'])
    sleep(2)
    touch("view:'UIImageView' marked:'glyph-arrow.png'")
    sleep(5)
    @item = data['item']


  end


  def item_exists

    has_text?("#{@item}")

  end

  def add_to_cart

    scroll_view_to_bottom("view:'UITableView' marked:'Empty list'")
    sleep(1)
    touch("view:'UIButtonLabel' marked:'Save & Add to Cart'")

  end

  def pick_color(data = {})
    data = DEFAULT_DATA.merge(data)
    touch("view:'UILabel' marked:'Tap to Select'")
    sleep(2)
    wait_for_and_touch("view:'UILabel' marked:'#{data['color']}'")
    sleep(2)

  end

  def personalize_with_embroidery


    touch("view:'UILabel' marked:'Tap to Select'")
    sleep(2)
    touch("view:'UILabel' marked:'Embroidery - add $7'")
    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view:'UILabel' marked:'30'")
    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view:'UILabel' marked:'Aqua'")
    sleep(2)
    touch("view:'UITextFieldLabel' marked:'Text (3 character max)'")
    type_into_keyboard('AMW')



  end

  def personalize_with_icon_it_no_text

    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view:'UILabel' marked:'Icon-It w/o Text - add $7'")
    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view marked:'Aqua'")
    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view marked:'Baseball'")

  end

  def personalize_with_icon_it_with_text

    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view:'UILabel' marked:'Icon-It with Text - add $10'")
    sleep(2)
    touch("view marked:'Tap to Select' index:1")
    sleep(2)
    touch("view marked:'Football'")
    sleep(2)
    touch("view marked:'Tap to Select' index:1")
    sleep(2)
    touch("view marked:'Aqua'")
    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view marked:'Aqua'")
    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view marked:'30'")
    sleep(2)
    touch("view:'UITextFieldLabel' marked:'Text (3 character max)'")
    sleep(2)
    type_into_keyboard('AMW')

  end

  def personalize_with_none

    sleep(2)
    touch("view marked:'Tap to Select' index:0")
    sleep(2)
    touch("view:'UILabel' marked:'None'")
    sleep(2)



  end

  def continue_shopping

    touch("view:'UIImageView' marked:'img-arrow-up.png'")
    sleep(5)
    touch("view:'UIButtonLabel' marked:'Continue Shopping'")

  end

  def verify_totals(product,shipping,tax,total)

    touch("view:'UIImageView' marked:'img-arrow-up.png'")
    sleep(5)
    view_with_mark_exists("#{product}").should == true
    view_with_mark_exists("#{shipping}").should == true
    view_with_mark_exists("#{tax}").should == true
    view_with_mark_exists("#{total}").should == true



  end

  def item_search_screen_is_present


    view_with_mark_exists("Item Search(1)")

  end


end