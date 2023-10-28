#to run selected runner method
to run, use mvn test -Dtest=<runnername>#<methodname>
  Example: mvn test -Dtest=conduitTest#testTags

#to run selected tags
mvn test -Dkarate.options="--tags @debug"

#to run all scenario except @skipme -- special tags by karate
mvn test -Dkarate.options="--tags ~@skipme"

#to ignore selected scenario use @ignore


#Requirements:

VSCode
	- Plugin:
		○ Open in Default Browser
		○ Material Icon Them
		○ Cucumber (Gherkin) Full Support
        ○ Karate Runner - by Kirk Slota