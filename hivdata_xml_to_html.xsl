<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:x="https://www.artiigo.com" exclude-result-prefixes="x">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"/>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"/>
                <title>hivdata_xml_to_html.xsl</title>
            </head>
            <body>
                <div class="container">
                    <h2>Estimated cases of HIV on the World</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Country</th>
                                <th>Year</th>
                                <th>Display</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//hiv/data">
                                <tr>
                                    <td>
                                        <xsl:value-of select="country"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="year"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="display"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
