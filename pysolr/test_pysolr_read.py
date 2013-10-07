# If on Python 2.X
from __future__ import print_function
import pysolr

# Setup a Solr instance. The timeout is optional.
solr = pysolr.Solr('http://rhsearch2.us.randomhouse.com:8080/solr/rhkids/', timeout=10)

results = solr.search('elmo')

print("Saw {0} result(s).".format(len(results)))