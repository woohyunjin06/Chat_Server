import Vapor

import FluentPostgresDriver
import Entity

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(
        .postgres(
            hostname: "localhost",
            username: "hyunjin",
            password: "",
            database: "chat"
        ),
        as: .psql
    )
    
    app.migrations.add(CreateUserMigration())
    
    // register routes
    try routes(app)
}
