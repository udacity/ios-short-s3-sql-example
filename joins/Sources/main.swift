import MySQL

// Create connection string
var connectionString = MySQLConnectionString(host: "172.17.0.3")
connectionString.port = 3306
connectionString.user = "root"
connectionString.password = "password"
connectionString.database = "game_night"

// Create connection pool
var pool = MySQLConnectionPool(connectionString: connectionString, poolSize: 10, defaultCharset: "utf8mb4")

// Get connection, make queries
do {
    try pool.getConnection() { (connection: MySQLConnectionProtocol) in

        // EXAMPLE 1 - SELECT (GET)

        // let result1 = try connection.execute(query: "SELECT * FROM activities")
        // while case let row? = result1.nextResult() {
        //     print(row)
        // }

        // EXAMPLE 2 - INSERT (POST)

        // let result2 = try connection.execute(query: "INSERT INTO activities (name, genre, description, emoji, min_participants, max_participants) VALUES ('New Activity', 'Puzzle', 'A simple game', '🎲', '2', '4');")
        // if result2.affectedRows > 0 {
        //     print("activity inserted")
        // } else {
        //     print("activity not inserted")
        // }

        // EXAMPLE 3 - UPDATE (PUT)

        // let result3 = try connection.execute(query: "UPDATE activities SET name='Yahtzee', genre='Chance', description='Roll the dice!', emoji='🎲', min_participants='2', max_participants='4' WHERE id=5;")
        // if result3.affectedRows > 0 {
        //     print("activity updated")
        // } else {
        //     print("activity not updated")
        // }

        // EXAMPLE 4 - DELETE (DELETE)

        // let result4 = try connection.execute(query: "DELETE FROM activities WHERE id=5;")
        // if result4.affectedRows > 0 {
        //     print("activity deleted")
        // } else {
        //     print("activity not deleted")
        // }

        // EXAMPLE 5 - SQL INJECTION

        // let activityID = "6; DROP TABLE activities"
        //
        // let result5 = try connection.execute(query: "SELECT * FROM activities WHERE id=\(activityID);")
        // while case let row? = result5.nextResult() {
        //     print(row)
        // }

        var queryBuilder = MySQLQueryBuilder().select(fields: ["id", "name", "description"], table: "activities")

        var result6 = try connection.execute(builder: queryBuilder)
        while case let row? = result6.nextResult() {
            print(row)
        }




    }
} catch {
    print(error.localizedDescription)
}
