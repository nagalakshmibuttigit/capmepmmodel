sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"porder/test/integration/pages/POsList.gen",
	"porder/test/integration/pages/POsObjectPage.gen",
	"porder/test/integration/pages/POItemSetObjectPage.gen"
], function (JourneyRunner, POsListGenerated, POsObjectPageGenerated, POItemSetObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('porder') + '/test/flp.html#app-preview',
        pages: {
			onThePOsListGenerated: POsListGenerated,
			onThePOsObjectPageGenerated: POsObjectPageGenerated,
			onThePOItemSetObjectPageGenerated: POItemSetObjectPageGenerated
        },
        async: true
    });

    return runner;
});

