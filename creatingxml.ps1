$xmlfilepath="C:\desktop\doll.xml"

[system.XML.XMLDocument]$xmlDocument = New-Object system.XML.XMLDocument

$element=$xmlDocument.createElement("CandidateDetails")
    
    $subelement=$xmldocument.createElement("subelement")
        $subelement.setattribute("id",40026442)
        $subelement.setattribute("name","monika")
        $subelement.setattribute("company","WIPRO")
        $subelement.setattribute("ODC","WILLIAMS")

        $xmldocument.appendchild($element)

    $element.appendchild($subelement)
    

    
    $xmldocument.save($xmlfilepath)
    