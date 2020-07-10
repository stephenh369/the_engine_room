require_relative('../db/sql_runner')

class Car

    attr_reader :id, :manufacturer, :model, :condition, :type, :year, :engine,
    :transmission, :fuel_type, :description, :stock, :buy_price, :sell_price

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
        @buy_price = options['buy_price'].to_i
        @sell_price = options['sell_price'].to_i
    end

    def save()
        sql = "INSERT INTO cars (
            manufacturer, model, condition, type, year, engine, transmission, fuel_type,
            description, stock, buy_price, sell_price
        ) 
        VALUES (
            $1, $2, $3, $4, $5, $6, $7, $8,
            $9, $10, $11, $12
        ) RETURNING id"
        values = [
            @manufacturer, @model, @condition, @type, @year, @engine,
            @transmission, @fuel_type, @description, @stock, @buy_price, @sell_price
        ]
        result = SqlRunner.run(sql, values).first
        @id = result['id'].to_i
    end

    def update()
        sql = "UPDATE cars SET (
            manufacturer, model, condition, type, year, engine, transmission, fuel_type,
            description, stock, buy_price, sell_price
        ) = (
            $1, $2, $3, $4, $5, $6, $7, $8,
            $9, $10, $11, $12
        ) WHERE id = $13"
        values = [
            @manufacturer, @model, @condition, @type, @year, @engine,
            @transmission, @fuel_type, @description, @stock, @buy_price, @sell_price
        ]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM cars WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.delete_all()
        sql = "DELETE FROM cars"
        SqlRunner.run(sql)
    end

    def self.all()
        sql = "SELECT * FROM cars"
        result = SqlRunner.run(sql)
        return result.map() {|car| Car.new(car)}
    end

end