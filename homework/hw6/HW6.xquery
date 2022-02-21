declare default element namespace "urn:isbn:1-931666-22-9";

<Files>


{for $file in collection("file:///c:/Users/SHDW/Desktop/xquery-assignment?select=*.xml")
order by count($file/ead/archdesc/dsc//c02[@level = 'file']) + count($file/ead/archdesc/dsc//c03[@level = 'file']) descending
return
<file>

<Question1_ID>{data($file/ead/eadheader/eadid)}</Question1_ID>
<Question2_Title>{data($file/ead/eadheader/filedesc/titlestmt/titleproper)}</Question2_Title>
<Question3_YearRange>{number(substring-after($file/ead/eadheader/filedesc/titlestmt/titleproper/date, '-')) - number(substring-before($file/ead/eadheader/filedesc/titlestmt/titleproper/date, '-'))}</Question3_YearRange>
<Question4_encorders>{substring-after($file/ead/eadheader/filedesc/titlestmt/author, 'Electronic finding aid encoded by')}</Question4_encorders> 
<Question5_NumOfChanges>{count($file/ead/eadheader/revisiondesc/change)}</Question5_NumOfChanges>
<Question6_Extent>{data($file/ead/archdesc/did/physdesc/extent)}</Question6_Extent>
<Question7_Access_Restrictions>{string-join(data($file/ead/archdesc/accessrestrict/p), '|')}</Question7_Access_Restrictions>
<Question8_Index_Terms>
{for $term in $file//controlaccess/list/item

return
<Index_Term>{data($term)}</Index_Term>
}
</Question8_Index_Terms>
<Question9_NumOfFiles>{count($file/ead/archdesc/dsc//c02[@level = 'file']) + count($file/ead/archdesc/dsc//c03[@level = 'file'])}</Question9_NumOfFiles>

(:Question 10 - I assumed by the use of "these" that you were referring to the volume of collections based on the number of files which was computed in question 9. For that I used an Order By operation by descending to have the largest file size structure as the first result and have results decrease in file size progressively. If you wanted to do the same thing but with physical extent, I would replace the current Order by text with the coreoperations in Question 6 - which I tried copying here but kept processing as a cubric foot even within a comment -  and still sort by descending:)

</file>


}
</Files>