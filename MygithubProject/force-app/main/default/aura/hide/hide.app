<aura:application >
 <lightning:input aura:id="quoteField" name="name" label="Name" value="{!v.newQuote.Name}" required="true" class="slds-hidden" />
    
!-- attribute which will be set in JS controller -->
<aura:attribute type="String" name="hiddenAttrib" default="anyvalue" />
<!-- -->
<aura:attribute name="name" type="String" default="New Quote"/>

<aura:handler name="init" value="{!this}" action="{!c.doInit}"/>

<lightning:input aura:id="quoteField" name="name" label="Name"
                 value="{!v.name}" required="true"/>
</aura:application>