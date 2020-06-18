class TierraMedia

    attr_reader :lista_de_reinos

	def initialize

		@lista_de_reinos = []     

    end
    
    def agregar_reino(factory, rey, castillo, descripcion, numero_efectivos, nombre_reino)





        @lista_de_reinos.push(factory.create(rey, castillo, descripcion, numero_efectivos, nombre_reino))



    end

end





class Realm 

    attr_reader :rey , :castillo , :descripcion , :numero_efectivos

    def initialize(rey, castillo, descripcion, numero_efectivos, nombre_reino)

        @rey = rey 
        @castillo = castillo
        @descripcion = descripcion
        @numero_efectivos = numero_efectivos
        @nombre_reino = nombre_reino
    
    end

    def describe 


        primera_linea = "I am #{@rey}, kinf of the #{@nombre_reino} "
        segunda_linea = "This is #{@castillo}, home of the #{@nombre_reino}"
        tercera_linea = "This is the powerful #{@descripcion} composed of #{@numero_efectivos} #{@nombre_reino}"

        puts primera_linea
        puts segunda_linea
        puts tercera_linea
    
    end 



end

class FactoryRealm

    def create(rey, castillo, descripcion, numero_efectivos, nombre_reino)

        objeto_creado = Realm.new(rey, castillo, descripcion, numero_efectivos, nombre_reino)
        return objeto_creado
        
    end

end


tierra_media = TierraMedia.new
fabrica_realm = FactoryRealm.new
tierra_media.agregar_reino(fabrica_realm, "Melkor", "Isengard", "Globins Army", 20000, "Orcs")


for objeto in tierra_media.lista_de_reinos

    objeto.describe

end




