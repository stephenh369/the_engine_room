require_relative('../db/sql_runner')

class Manufacturer

    attr_reader :id, :name

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO manufacturers (name) 
        VALUES ($1) RETURNING id"
        values = [@name]
        result = SqlRunner.run(sql, values).first
        @id = result['id'].to_i
    end

    def update()
        sql = "UPDATE manufacturers SET (name) = ($1) WHERE id = $2"
        values = [@name, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM manufacturers WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def model_list()
        sql = "SELECT * FROM cars WHERE manufacturer = $1"
        values = [@id]
        result = SqlRunner.run(sql, values).first
        return result
    end

    def self.delete_all()
        sql = "DELETE FROM manufacturers"
        SqlRunner.run(sql)
    end

    def self.all()
        sql = "SELECT * FROM manufacturers"
        result = SqlRunner.run(sql)
        return result.map() {|manufacturer| Manufacturer.new(manufacturer)}
    end

    def self.find(id)
        sql = "SELECT * FROM manufacturers WHERE id = $1"
        values = [id]
        manufacturer = SqlRunner.run(sql, values)
        result = Manufacturer.new(manufacturer.first)
        return result
    end

end