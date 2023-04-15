<div id="tabs">
    <ul>
        <li><a href="#tabs-1"><!--[TABTEXT]--></a></li>
    </ul>
    <div id="tabs-1">        
        [MESSAGE]
        [FORMHANDLEREVENT]
        <div class="row">
        	<div class="row-height">
        		<div class="col-xs-12 col-md-12 col-md-height">
        			<div class="inside inside-full-height">	     
                        <form action="" method="post" id="buchungenform">                             				
                            <fieldset>     
                                <legend>{|Einzelsaldo zuordnen und auf mehrere Gegenbelege oder Sachkonto verbuchen.|}</legend>      
                                <table>    
                                    <tr>                            
                                        <td>
                                            "[DOC_ZUORDNUNG]"                                            
                                        </td>
                                    </tr>           
                                    <tr>                                           
                                        <td>
                                            Saldo: <u>[DOC_SALDO]</u>
                                        </td>
                                    </tr>           
                                </table>
                            </fieldset>    
                            [TAB1]                            
                        </form> 
                        <fieldset>                           
                            <table>
                                <legend>Stapelverarbeitung</legend>                          
                                <tr>                            
                                    <td><input type="checkbox" value="1" name="override" form="buchungenform" />&nbsp;Mit Abweichung buchen&nbsp;</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" value="1" id="autoalle" />&nbsp;alle markieren&nbsp;
                                        <select form="buchungenform" id="sel_aktion" name="sel_aktion">
                                            <option value="buchen">{|auf Ausgew&auml;hlte buchen|}</option>
                                            <option value="buchen_diff_sachkonto">{|auf Ausgew&auml;hlte buchen, Gegenbeleg auf Sachkonto ausgleichen|}</option>
                                        </select>&nbsp;Sachkonto:
                                        <input type="text" form="buchungenform" id="sachkonto" name="sachkonto" value="">
                                        <button name="submit" form="buchungenform" value="BUCHEN" class="ui-button-icon">{|BUCHEN|}</button>
                                    </td>
                                </tr>                             
                                <tr>                                           
                                    <td>
                                        <input type="number" name="abschlag" id="abschlag" form="neuberechnen" value=[ABSCHLAG] />% Abschlag auf Buchungsbetrag</td>
                                    </td>
                                </tr>           
                                <tr>
                                   <form action="" method="post" id="neuberechnen">                      
                                        <td>
                                            <button name="submit" value="neuberechnen" class="ui-button-icon" style="width:100%;">
                                                {|Buchungen neu berechnen|}
                                            </button>
                                        </td>                                
                                    </form> 
                                </tr>                                                         
                            </table>
                        </fieldset>  				
                    </div>
           		</div>
           	</div>	
        </div>
    </div>
</div>

<script>

    $('#autoalle').on('change',function(){
      var wert = $(this).prop('checked');
      $('#fibu_buchungen_einzelzuordnen').find('input[type="checkbox"]').prop('checked',wert);
      $('#fibu_buchungen_einzelzuordnen').find('input[type="checkbox"]').first().trigger('change');
    });
  
</script>
