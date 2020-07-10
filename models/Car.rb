require_relative('../db/sql_runner')

class Car

    attr_reader :id, :manufacturer, :model, :condition, :type, :year, :engine,
    :transmission, :fuel_type, :description, :stock, :buy_stock, :sell_stock

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @manufacturer = options['manufacturer'].to_i
        @model = options['model']
        @condition = options['condition']
        @type = options['type']
        @year = options['year']
        @engine = options['engine']
        @transmission = options['transmission']
        @fuel_type = options['fuel_type']
        @description = options['description']
        @stock = options['stock'].to_i
        @buy_stock = options['buy_stock'].to_i
        @sell_stock = options['sell_stock'].to_i
    end


end