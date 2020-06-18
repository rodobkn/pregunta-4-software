class TierraMedia

    attr_reader :lista_de_reinos

	def initialize

		@lista_de_reinos = []     

    end
    
    def agregar_reino(factory, rey, castillo, descripcion, numero_efectivos)



        

        @lista_de_reinos.push(factory.create(rey, castillo, descripcion, numero_efectivos))



    end

end


class ReinoElfo

    attr_reader :rey , :castillo , :descripcion , :numero_efectivos

    def initialize(rey, castillo, descripcion, numero_efectivos)

        @rey = rey 
        @castillo = castillo
        @descripcion = descripcion
        @numero_efectivos = numero_efectivos
    
    end

end

class ReinoOrco

    attr_reader :rey , :castillo , :descripcion , :numero_efectivos

    def initialize(rey, castillo, descripcion, numero_efectivos)

        @rey = rey 
        @castillo = castillo
        @descripcion = descripcion
        @numero_efectivos = numero_efectivos
    
    end

end

class ReinoHumano

    attr_reader :rey , :castillo , :descripcion , :numero_efectivos

    def initialize(rey, castillo, descripcion, numero_efectivos)

        @rey = rey 
        @castillo = castillo
        @descripcion = descripcion
        @numero_efectivos = numero_efectivos
    
    end

end

class FabricaElfos

    def create(rey, castillo, descripcion, numero_efectivos)

        objeto_creado = ReinoElfo.new(rey, castillo, descripcion, numero_efectivos)
        return objeto_creado
        
    end

end

class FabricaOrcos

    def create(rey, castillo, descripcion, numero_efectivos)

        objeto_creado = ReinoElfo.new(rey, castillo, descripcion, numero_efectivos)
        return objeto_creado
        
    end

end

class FabricaHumanos

    def create(rey, castillo, descripcion, numero_efectivos)

        objeto_creado = ReinoElfo.new(rey, castillo, descripcion, numero_efectivos)
        return objeto_creado
        
    end

end


tierra_media = TierraMedia.new
fabrica_elfos = FabricaElfos.new
fabrica_humanos = FabricaHumanos.new
fabrica_orcos = FabricaOrcos.new 

tierra_media.agregar_reino(fabrica_orcos, "Rey orco", "Castillo Orco", "Somos el mejor ejercito", 100)

for objeto in tierra_media.lista_de_reinos

    puts objeto.rey
    puts objeto.castillo
    puts objeto.descripcion

end