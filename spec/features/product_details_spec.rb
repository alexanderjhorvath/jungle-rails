require 'rails_helper'

RSpec.feature "Visitor goes to Product Detail Page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'
    @last_product_id = nil

    10.times do |n|
      p = @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
      @last_product_id = p.id
    end
  end

  scenario "They are able to load the product detail page" do
    # ACT
    visit '/'

    first('article.product').find_link('Details').click

    # DEBUGGG

    # sleep(3)
    # puts page.html
    #
    # save_screenshot

    #VERIFY
    expect(page).to have_css '.products-show'
    expect(URI.parse(current_path).path.split('/').last.to_i).to be(@last_product_id)



  end
end
