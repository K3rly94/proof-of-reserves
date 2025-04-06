cd /path/to/your/repo
git remote add origin git@github.com:yourusername/your-repo.git
git remote add secondary git@bitbucket.org:yourusername/your-repo.git
git remote add tertiary git@gitlab.com:yourusername/your-repo.git
git remote -v
git push origin main
git push secondary main
git push tertiary main
nano .git/hooks/post-commit
#!/bin/sh
git push origin main
git push secondary main
git push tertiary main
chmod +x .git/hooks/post-commit
