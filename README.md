# jenkins-docker-compose
This repo provides the simple files and steps that help to quickly configure Jenkins server using Docker Desktop and run simple unit tests created in Nunit framework.
 
1. Install Docker Desktop https://www.docker.com/products/docker-desktop/
2. Login to your GitHub and fork the repo https://github.com/DamianPawlow/TestUnitExample
3. Clone the current repo to your local machine (run the command: git clone https://github.com/DamianPawlow/jenkins-docker-compose)
4. Go to the cloned directory and edit 'pipeline.jenkins' file (Replace the <YOUR_GITHUB_USERNAME> with your own GitHub username)
5. From the same cloned directory run the command: docker-compose up --build -d
4. Run the command: docker-compose up
5. Go to the browser and type in address bar: http://localhost:8080
6. Put the temporary password generated in the terminal
7. Install recommended plugins
8. Create new jenkins user
9. Go to Manage Jenkins -> Manage Plugins -> Available and search for ".NET SDK Support" plugin, select checkbox and click 'Install without restart' button
10. Go to the Dashboard -> New Item -> provide the item name "dotnet-pipeline"
11. Go to the bottom of the page and paste the content of pipeline.jenkins file -> click save
12. Click Build Now. You should see the failed testing stage (because of wrong assertion definition)
13. Clone your forked repo, run the command: git clone https://github.com/<YOUR_GITHUB_USERNAME>/TestUnitExample
14. Go to the new cloned repo, open TestUnitExample\UnitTest1.cs and change the expected value from 3 to 4 in line 15. Make sure it looks like:
Assert.IsTrue(Calculator.Addition(2,2) == 4);
15. Commit the changes to your forked repo
16. Run the pipeline again and check the status

