<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:x="https://www.artiigo.com" exclude-result-prefixes="x">
    <xsl:output method="html" indent="yes"/>

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
                <link rel="stylesheet" href="styles.css"/>
                <title>HIV Data - 2000</title>
            </head>
            <body>
                <div class="container">
                    <nav class="navbar navbar-expand-lg navbar-light bg-warning">
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="hivdata_2000.html">2000</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="hivdata_2005.html">2005</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="hivdata_2010.html">2010</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="hivdata_2018.html">2018</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <table class="table table-responsive table-striped my-table">
                        <thead>
                            <tr>
                                <th>Country</th>
                                <th>Year</th>
                                <th>Display</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//hiv/data">
                                <xsl:if test="year = 2000 and display!='No data'">
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
                                </xsl:if>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
