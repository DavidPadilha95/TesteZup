class Teste < SitePrism::Page
    set_url ""

    element :btn_lupa, '#h_search-btn'
    element :console, '#content-middle > div:nth-child(6) > div > div > div > div.row.product-grid.no-gutters.main-grid > div:nth-child(1) > div > div.RippleContainer-sc-1rpenp9-0.dMCfqq > a > section > div.product-card-photo.Photo-bwhjk3-4.feDKYY.ViewUI-sc-1ijittn-6.iXIDWU > div > div > picture > img'
    element :btn_comprar, '#btn-buy'
    element :btn_continue, '#btn-continue'
    element :btn_sub, '#brd-link'

    def pesquisar(item)
        fill_in 'h_search-input', with: "#{item}"
        btn_lupa.click
    end

    def verificar
        find('#content-middle > div:nth-child(6) > div > div > div > div.row.product-grid.no-gutters.main-grid')
    end

    def add
        console.click
        binding.pry
        btn_comprar.click 
        btn_continue.click 
        btn_sub.click 
        find('#h_minicart').click #Carrinho
    end

    def carrinho
        page.all('.crt-quantity').count
    end

    def mensagem
        find('.gqIygL')
    end

    def compras
        find('#h_minicart').click
    end

    def men_vaz
        find('#crt-box')
    end
end