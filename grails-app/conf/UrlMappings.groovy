class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/"(view:"/quiz/start.gsp")
        "500"(view:'/error')
	}
}
