sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/invest/manageplans/test/integration/FirstJourney',
		'com/sap/invest/manageplans/test/integration/pages/PlansList',
		'com/sap/invest/manageplans/test/integration/pages/PlansObjectPage'
    ],
    function(JourneyRunner, opaJourney, PlansList, PlansObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/invest/manageplans') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePlansList: PlansList,
					onThePlansObjectPage: PlansObjectPage
                }
            },
            opaJourney.run
        );
    }
);