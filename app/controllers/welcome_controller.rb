class WelcomeController < ApplicationController
  def index
    @name = params[:name]
  end
  def about
    redirect_to welcome_path_prices
    #@descriptions = "Nuestra empresa es Amavocado, distribuidora de aguacate para exportación, ubicada en los municipios de Amagá y Angelopolis"
  end

  def contact_us
    #@adress = "Amagá, Antioquia, vereda la Gualí... tel: 3004164459"
  end

  def prices
    #@prix =  "Básico: 3000/kg... Medio: 6000/kg... Avanzado: 9000/kg"
  end

  # vistas / metodos / acciones
end
