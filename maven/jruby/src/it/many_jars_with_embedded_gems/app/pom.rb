id 'org.jruby.its.main.many_jars_with_embedded_gems:app:1'

version = File.read( File.join( basedir, '../../../../../..', 'VERSION' ) ).strip

# two jars with embedded gems
jar 'de.saumya.mojo:maven-tools', '1.0.0.rc1'
jar 'org.rubygems:zip', '2.0.2'

# jruby scripting container
pom 'org.jruby:jruby', version

# unit tests
jar 'junit:junit', '4.8.2', :scope => :test

resource :directory => "src/main/ruby"
