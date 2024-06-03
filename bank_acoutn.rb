require "active_support/all"

class ContaCorrente

  attr_accessor :name, :saldo

  def initialize (name, saldo)
    @name = name
    @saldo = saldo
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo = @saldo - valor
      puts @saldo
    else
    puts "Seu saldo é #{@saldo}, por isso não será completada a transação"
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
    puts @saldo
  end

  def validar
    if @name.blank?
      "Nomes em branco não são válidos"
    else
      "OK"
    end
  end

end


user = ContaCorrente.new("", 500)
user2 = ContaCorrente.new("Adriano", 500)
puts user.validar
puts user2.validar
