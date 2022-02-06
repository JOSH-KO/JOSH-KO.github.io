<notes on assignment 4>

I did seperate xsl transfer for each operation.

First, to clear the base html from extra content and create xml tags, I made the output.xml from the output.xsl.

Second, to sort ascending from Institution-Name, I took the output.xml and applied the Sorting.xsl to get the Sorted.xml.

--- This made an error of removing the root element, to which I added back manually.

Finally, to get a html table from the sorted xml, I applied output.xsl to the Sorted.xml.

The final product is Table.html
