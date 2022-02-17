declare default element namespace "http://www.tei-c.org/ns/1.0";


<files>
{for $file in collection("file:///c:/Users/SHDW/Desktop/vwwp_tei?select=*.xml")
order by count($file/TEI/text//pb) descending
return 
<file>

<idno>{data($file/TEI/@xml:id)}</idno>
<title>{string-join(data($file/TEI/teiHeader/fileDesc/titleStmt/title), ';')}</title>
<title-count>{count($file/TEI/teiHeader/fileDesc/titleStmt/title)}</title-count>
<author>{data($file/TEI/teiHeader/fileDesc/titleStmt/author)}</author>
<keywords>{string-join(data($file/TEI/teiHeader/profileDesc/textClass/keywords/list/item/term), ';')}</keywords>
<Keyword-count>{count($file/TEI/teiHeader/profileDesc/textClass/keywords/list/item/term)}</Keyword-count>
<encoders>


{for $name in $file//respStmt/name

return
<name>{data($name)}</name>
}
</encoders>

<numbChap>{count($file/TEI/text//div[@type='chapter'])}</numbChap>

<numbPara>{count($file/TEI/text//div/p)}</numbPara>

<numbPB>{count($file/TEI/text//pb)}</numbPB>


</file>


}
</files>
