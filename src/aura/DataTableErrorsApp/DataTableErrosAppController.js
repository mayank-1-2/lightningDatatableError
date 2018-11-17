({
	validate : function(component, event, helper) {
		//validation logic
		//
		//
       	
        console.log('validate called');
        component.set('v.errors', {
            rows: {
                1: {
                    title: 'We found 2 errors.',
                    messages: [
                        'Enter a valid amount.',
                        'Verify the email address and try again.'
                    ],
                    fieldNames: ['amount', 'contact']
                }
            }
            ,
            table: {
                title: 'Your entry cannot be saved. Fix the errors and try again.',
                messages: [
                    'Row 2 amount must be number',
                    'Row 2 email is invalid'
                ]
            }
         });
    }
})