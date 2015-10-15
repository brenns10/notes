#!/usr/bin/env bash
# Push HTML files to gh-pages automatically.

REPO=notes

set -e

# Clone the gh-pages branch outside of the repo and cd into it.
cd ..
git clone -b gh-pages "https://$GH_TOKEN@github.com/brenns10/$REPO.git" gh-pages
cd gh-pages

# Update git configuration so I can push.
if [ "$1" != "dry" ]; then
    # Update git config.
    git config user.name "Travis Builder"
    git config user.email "smb196@case.edu"
fi

# Copy in the assorted content.
cp ../$REPO/*.(html|jpg|png|gif) ./

# Add and commit changes.

# Add and commit changes.
git add -A .
git commit -m "[ci skip] Autodoc commit for $COMMIT."
if [ "$1" != "dry" ]; then
    git push -q origin gh-pages
fi
