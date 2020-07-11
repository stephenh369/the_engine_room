require_relative('../db/sql_runner')

class Manufacturer

    attr_reader :id, :name, :models

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @models = options['models']
    end

    def save()
        sql = "INSERT INTO manufacturers (name, models) 
        VALUES ($1, $2) RETURNING id"
        values = [@name, @models]
        result = SqlRunner.run(sql, values).first
        @id = result['id'].to_i
    end

    def update()
        sql = "UPDATE manufacturers SET (name, models) = ($1, $2) WHERE id = $3"
        values = [@name, @models, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM manufacturers WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def models()
        sql = "SELECT models FROM manufacturers WHERE id = $1"
        values = [@id]
        result = SqlRunner.run(sql, values)
        return result.first
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