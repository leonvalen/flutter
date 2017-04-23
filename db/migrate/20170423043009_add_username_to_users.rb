class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change # cualquier cambio dentro de este método, es traducido a SQL y modifica la base de datos (PostgreSQL)
  	add_column :users, :username, :string #agrega una nueva columna a la tabla "users", llamada "username" de tipo "string"
  	add_index  :users, :username, unique:true #1: indexar por username para una búsqueda rápida y 2: asegura de que sea único
  end
end
