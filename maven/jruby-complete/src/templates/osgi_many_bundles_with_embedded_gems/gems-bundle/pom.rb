#-*- mode: ruby -*-

gemfile

id 'org.jruby.its:osgi-gems-bundle', '1.0'

packaging 'bundle'

jar 'org.osgi:org.osgi.core', '5.0.0', :scope => :provided

jruby_plugin! :gem, :includeRubygemsInResources => true

# needs pom.xml for felix plugin
properties( 'polyglot.dump.pom' => 'pom.xml',
            'jruby.home' => '${project.basedir}/../../../../../../' )

plugin( 'org.apache.felix:maven-bundle-plugin', '2.4.0',
        :instructions => {
          'Export-Package' => 'org.jruby.osgi.gems',
          'Include-Resource' => '{maven-resources}'
        } ) do
  # TODO fix DSL
  @current.extensions = true
end
