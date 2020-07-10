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

end