warn "Jdbc-Informix is only for use with JRuby" if (JRUBY_VERSION.nil? rescue true)
require "jdbc/informix/version"

module Jdbc
  module Informix

    def self.driver_jars
      %w[ifxjdbc.jar ifxjdbcx.jar ifxlang.jar ifxlsupp.jar ifxsqlj.jar ifxtools.jar]
    end

    def self.load_driver(method = :load)
      driver_jars.each do |jar|
        send method, jar
      end
    end

    def self.driver_name
      "com.informix.jdbc.IfxDriver"
    end

    if defined?(JRUBY_VERSION) &&
      ( Java::JavaLang::Boolean.get_boolean("jdbc.driver.autoload") ||
        Java::JavaLang::Boolean.get_boolean("jdbc.ifx.autoload") )
      warn "autoloading JDBC driver on require 'jdbc/informix'" if $VERBOSE
      load_driver :require
    end

  end
end
