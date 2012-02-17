<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step name="job-lister"
    xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:c="http://www.w3.org/ns/xproc-step"
    xmlns:px="http://www.daisy.org/ns/pipeline/xproc"
    xmlns:xd="http://www.daisy.org/ns/pipeline/doc"
    version="1.0">
    
    <p:documentation>
        <xd:short>job-lister</xd:short>
        <xd:detail>Creates an HTML view of the current Pipeline 2 jobs.</xd:detail>
        <xd:homepage>http://code.google.com/p/daisy-pipeline/wiki/</xd:homepage>
        <xd:author>
            <xd:name>Romain Deltour</xd:name>
            <xd:mailto>rdeltour@gmail.com</xd:mailto>
            <xd:organization>DAISY</xd:organization>
        </xd:author>
    </p:documentation>
    
    <p:option name="output" required="true" px:type="anyFileURI" px:media-type="text/html">
        <p:documentation>
            <xd:short>Path where to store the resulting HTML File</xd:short>
            <xd:detail>An HTML document displaying the current list of Pipeline 2 jobs</xd:detail>
        </p:documentation>
    </p:option>

    <p:http-request>
        <p:input port="source">
            <p:inline>
                <c:request method="GET" href="http://localhost:8182/ws/jobs"/>
            </p:inline>
        </p:input>
    </p:http-request>
    <p:xslt>
        <p:input port="stylesheet">
            <p:document href="job-to-xhtml.xsl"/>
        </p:input>
        <p:input port="parameters">
            <p:empty/>
        </p:input>
    </p:xslt>
    <p:store method="xhtml" indent="true" media-type="text/html" include-content-type="true" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <p:with-option name="href" select="$output"/>
    </p:store>

</p:declare-step>