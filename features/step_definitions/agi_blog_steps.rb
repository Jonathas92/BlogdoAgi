Dado('que eu entre no blog do Agi') do
    Home.new.acess_blo
  end
  
  Quando('clico na lupa de pesquisa') do
    Home.new.click_magnifier.click

  end

  Quando('busco por {string} utilizando o botão Enter para pesquisar') do |invest|
    @pesquisa = invest
    Home.new.search_field.set @pesquisa
    Home.new.search_field.send_keys(:enter)
  end

  
  Então('valido se fui direcionado  para outra pagina') do
    title = find(EL['result'])
    expect(title).to have_content @pesquisa
  end
  
  Quando('insiro os caracteres especiais') do
    Home.new.search_field.set MASSA['caracteres']
    Home.new.btn_search
  end
  
  Então('valido se a mensagem de Nenhum resultado é apresentado na pagina') do
    title = find(EL['not_result'])
    expect(title).to have_content MASSA['sem_resultado']

    title2 = find(EL['subtitle'])
    expect(title2).to have_content MASSA['nao_encontrado']

  end
