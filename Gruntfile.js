module.exports = function(grunt) {
  grunt.initConfig({
    exec: {
      backgroundServer: "node fizzbuzz.js &",
			waitForServer: "sleep 2",
			loadPage: "curl http://localhost:8124 2>/dev/null",
			killServer: "lsof -i tcp:8124 | awk 'NR!=1 {print $2}' | xargs kill"
    }
  });

  grunt.loadNpmTasks("grunt-exec");

  grunt.registerTask("default", ["exec"]);
};
