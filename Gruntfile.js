module.exports = function(grunt) {
  grunt.initConfig({
    exec: {
      backgroundServer: "node fizzbuzz.js &",
			waitForServer: "sleep 2",
			loadPage: "curl -s http://localhost:8124",
			killServer: "lsof -i tcp:8124 | awk 'NR!=1 {print $2}' | xargs kill"
    }
  });

  grunt.loadNpmTasks("grunt-exec");

  grunt.registerTask("default", ["exec"]);
};
