<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="5.0" method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/listacompras">
        <html>
            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
            </head>
            <body>

                <h1>Compras</h1>

                <hr/>

                <section class="row">
                    <xsl:for-each select="venta">

                        <div class="col-sm-4">
                            <div class="card">

                                <xsl:if test="ventacredito">

                                    <div class="card-header">
                                        Venta Credito
                                    </div>

                                    <div class="card-body">
                                    <p class="card-text">Cantidad: <xsl:value-of select="ventacredito/cantidad"/></p>
                                    <p class="card-text">Fecha final: <xsl:value-of select="ventacredito/fechafinpago"/></p>   
                                    </div>

                                </xsl:if>
                                
                                <xsl:if test="ventainmediata">

                                    <div class="card-header">
                                        Venta Inmediata
                                    </div>
                                    
                                    <div class="card-body">
                                        <p class="card-text">Cantidad:  <xsl:value-of select="ventainmediata/cantidad"/></p>
                                        <p class="card-text">Divisa: <xsl:value-of select="ventainmediata/divisa"/></p>
                                    </div>

                                </xsl:if> 

                            </div>
                        </div>

                    </xsl:for-each>
                </section>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>