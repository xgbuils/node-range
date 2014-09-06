module.exports = function(grunt) {
  grunt.initConfig({
    exec: {
      backgroundServer: "node fizzbuzz.js &",
			waitForServer: "sleep 2",
			loadPage: "curl -s http://localhost:8124",
			killServer: "lsof -i tcp:8124 | awk 'NR!=1 {print $2}' | xargs kill",

      jshint: "jshint .",
      lili: "bundle exec lili ."
    }
  });

  grunt.loadNpmTasks("grunt-exec");

  grunt.registerTask("default", [
    "exec:backgroundServer",
    "exec:waitForServer",
    "exec:loadPage",
    "exec:killServer"
  ]);

  grunt.registerTask("test", [
    "exec:backgroundServer",
    "exec:waitForServer",
    "exec:loadPage",
    "exec:killServer"
  ]);

  grunt.registerTask("lint", [
    "exec:jshint",
    "exec:lili"
  ]);

  grunt.registerTask("jshint", ["exec:jshint"]);
  grunt.registerTask("lili", ["exec:lili"]);
};
