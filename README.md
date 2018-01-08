# Dockerized Solidus
A dockerized, ready-to-go Solidus E-commerce install for demonstration or instruction, or as the starting point for your own modifications.  This example uses Postgresql as the database.  Postgresql's authentication data is stored in a Docker <code>.env</code> file and is shared with the database and the app in <code>docker-compose.yml</code>

# Usage
<code>docker-compose up</code>

Solidus should be available with the default sample data at http://localhost:3000/

Site admin username is <code>admin@site</code>.  Password is <code>pass123</code>.

Want a do-over?  Run <code>scripts/do-over.sh</code> and ALL your Docker data (even Docker data not having to do with this project!!!) will go away.  Use with caution.

The Rails application is exposed as <code>/app</code>, and can be modified outside of the Docker container, as it is an external volume.  For your own local commits, make sure you're running <code>git</code> from within this directory, and that the <code>.gitignore</code> and other Git configuration is to your liking.  Running <code>git</code> from the parent directory of this project is inadvisable, unless you are actually committing to <i>this</i> project.

# Credits
The install steps are based on Novneet's blog post at http://www.techienov.com/post/solidus-shop/.

More info on Solidus: https://solidus.io/
