# If on Python 2.X
from __future__ import print_function
import pysolr

# Setup a Solr instance. The timeout is optional.
solr = pysolr.Solr('http://rhsearch2.us.randomhouse.com:8080/solr/rhkids/', timeout=10)

# How you'd index data.
solr.add([
    {
        "id": "doc_1",
        "title": "A test document elmo 1",
    }
])

# You can optimize the index when it gets fragmented, for better speed.
#solr.optimize()