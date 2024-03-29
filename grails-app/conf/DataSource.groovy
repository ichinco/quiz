dataSource {
    pooled = true
}
hibernate {
//    cache.use_second_level_cache = true
//    cache.use_query_cache = true
//    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
//            url = "jdbc:postgresql://localhost:5432/quiz?user=postgres&password=dev"
            url = "jdbc:postgresql://ec2-54-243-193-133.compute-1.amazonaws.com:5432/d50lkg9skmlkhe?user=sfodgkoxvjydhm&password=vJ9DpFVrYq1wIvShtjKY9uE02Z&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
            driverClassName = "org.postgresql.Driver"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.hsqldb.jdbcDriver"
            username = "sa"
            password = ""
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
//            url = "jdbc:hsqldb:file:prodDb;shutdown=true"
            driverClassName = "org.postgresql.Driver"
            url = "jdbc:postgresql://ec2-54-243-193-133.compute-1.amazonaws.com:5432/d50lkg9skmlkhe?user=sfodgkoxvjydhm&password=vJ9DpFVrYq1wIvShtjKY9uE02Z&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
        }
    }
}
