<aura:application extends="force:slds">
    <aura:attribute name="errors" type="Object"/>
    <aura:attribute name="mydata" type="List" default="[{Amount:'200',contact:'jar@car.com'}]"/>
    <aura:attribute name="mycolumns" type="List" default="[{id:'a',label: 'Amount', fieldName: 'amount', type: 'currency', typeAttributes: { currencyCode: 'EUR'}, editable : 'true'},{label: 'Contact Email', editable : 'true', fieldName: 'contact', type: 'email', editable : 'true'}]"/>
    <lightning:datatable data="{! v.mydata }"
                         columns="{! v.mycolumns }"
                         keyField="id"
                         errors="{!v.errors}"></lightning:datatable>
    
    
    <lightning:button label="Validate " onclick="{!c.validate}"/>
</aura:application>