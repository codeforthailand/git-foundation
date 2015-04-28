#!/bin/bash

( cd book && gitbook build ) \
&& git add book/_book \
&& git commit -m "-> Publish to gh-pages" \
&& git push \
&& git subtree push --prefix book/_book origin gh-pages

# Ref: https://gist.github.com/cobyism/4730490
