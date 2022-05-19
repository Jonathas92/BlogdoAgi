class Home
    include Capybara::DSL

    def acess_blog
        visit('/')
    end

    def click_magnifier
        find(id: 'search-open').click
      end

    def search_field
        find(:xpath, EL['search_field'])

    end

    def btn_search
        find(EL['btn_search']).click
        
    end

end