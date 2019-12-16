namespace :initial do
  desc "Configuração inicial..."
  task setup: :environment do
    @states = [
      ["Acre", "AC"],
      ["Alagoas", "AL"],
      ["Amapá", "AP"],
      ["Amazonas", "AM"],
      ["Bahia", "BA"],
      ["Ceará", "CE"],
      ["Distrito Federal", "DF"],
      ["Espírito Santo", "ES"],
      ["Goiás", "GO"],
      ["Maranhão", "MA"],
      ["Mato Grosso", "MT"],
      ["Mato Grosso do Sul", "MS"],
      ["Minas Gerais", "MG"],
      ["Pará", "PA"],
      ["Paraíba", "PB"],
      ["Paraná", "PR"],
      ["Pernambuco", "PE"],
      ["Piauí", "PI"],
      ["Rio de Janeiro", "RJ"],
      ["Rio Grande do Norte", "RN"],
      ["Rio Grande do Sul", "RS"],
      ["Rondônia", "RO"],
      ["Roraima", "RR"],
      ["Santa Catarina", "SC"],
      ["São Paulo", "SP"],
      ["Sergipe", "SE"],
      ["Tocantins", "TO"]
    ]

    puts "Cadastrando estados..."

    @states.each do |state|
      State.create(
        name: state[0],
        acronym: state[1]
      )
    end
    
  end

end
