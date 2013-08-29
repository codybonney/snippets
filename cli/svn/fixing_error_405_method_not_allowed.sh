# svn: Server sent unexpected return value (405 Method Not Allowed) in response to MKCOL request for...
# This error seems to occasionally pop up on systems running SVN 1.6.*
# In most cases, I've found that it is caused when a user attempts to add a folder that already exists in the repository
# Occasionally, folders that were previously deleted don't show up when updating the working copy
# When you try to add a folder to the repo (not seeing that it exists in the repo already) this may pop up

# In the past, I've fixed this error by adding the directory under a different name, then renaming it after commit

svn delete folder1
svn add folder1Copy
svn commit
svn update
svn mv folder1Copy/ folder1/