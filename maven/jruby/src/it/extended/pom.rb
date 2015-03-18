id 'org.jruby.its.main:extended:1'

version = File.read( File.join( basedir, '../../../../..', 'VERSION' ) ).strip

# jruby scripting container
pom 'org.jruby:jruby', version

# unit tests
jar 'junit:junit', '4.8.2', :scope => :test

plugin :surefire, '2.15', :additionalClasspathElements => [ '${basedir}/../../../../../core/target/test-classes', '${basedir}/../../../../../test/target/test-classes' ]
