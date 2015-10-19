$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "graph_starter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "graph_starter"
  s.version     = GraphStarter::VERSION
  s.authors     = ["Brian Underwood"]
  s.email       = ["ml+github@semi-sentient.com"]
  s.homepage    = "http://github.com/neo4j-examples/graph_starter"
  s.summary     = "A Rails engine to get a UI for a Neo4j up and running quickly"
  s.description = "A Rails engine to get a UI for a Neo4j up and running quickly"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "neo4j", "~> 5.2.10"
  s.add_dependency "semantic-ui-sass", "~> 2.1.3.0"
  s.add_dependency "slim-rails", "~> 3.0.1"
  s.add_dependency "paperclip", "~> 4.2.0"
  s.add_dependency "neo4jrb-paperclip", "0.0.3"

end
