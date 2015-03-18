id 'org.jruby.its.main.many_jars_with_embedded_gems_ng:app:1'

version = File.read( File.join( basedir, '../../../../../..', 'VERSION' ) ).strip

# two jars with embedded gems
jar 'org.rubygems:gem1', '1'
jar 'org.rubygems:gem2', '2'

# jruby scripting container
pom 'org.jruby:jruby', version

# unit tests
jar 'junit:junit', '4.8.2', :scope => :test

resource :directory => "src/main/ruby"
