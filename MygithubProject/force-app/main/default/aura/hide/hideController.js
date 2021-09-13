({
	doInit : function(component, event, helper) {
        var hidden = component.get("v.hiddenAttrib");
        var quote = component.get("v.name");
        component.set("v.name", quote + ' - ' + hidden);
 }
})