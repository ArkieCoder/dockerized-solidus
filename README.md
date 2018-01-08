# Dockerized Solidus
A dockerized, ready-to-go solidus install for demonstration or instruction, or as the starting point for your own modifications.

# Usage
<code>docker-compose build</code><br/>
<code>docker-compose up</code>

Solidus should be available with the default sample data at http://localhost:3000/

Site admin username is <code>admin@site</code>.  Password is <code>pass123</code>

Want a do-over?  Run <code>scripts/do-over.sh</code> and ALL your Docker data (even Docker data not having to do with this project!!!) will go away.  Use with caution.

The Rails application is exposed as <code>/app</code>, and can be modified outside of the Docker container, as it is an external volume.

# Credits
The install steps are based on Novneet's blog post at http://www.techienov.com/post/solidus-shop/.
