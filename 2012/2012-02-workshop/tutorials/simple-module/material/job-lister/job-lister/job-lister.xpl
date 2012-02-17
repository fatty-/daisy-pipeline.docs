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
            <xd:name>your name</xd:name>
            <xd:mailto>your email</xd:mailto>
            <xd:organization>your organization</xd:organization>
        </xd:author>
    </p:documentation>
    
    <!-- TODO declare the input/output/options -->

    <!-- TODO add an http-request step to get the list of jobs from the Web Service -->

    <!-- TODO add an xslt step to transform the jobs XML format into XHTML -->

    <!-- Finally, store the file -->
    <p:store method="xhtml" indent="true" media-type="text/html" include-content-type="true" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <p:with-option name="href" select="$output"/>
    </p:store>

</p:declare-step>