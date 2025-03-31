sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.sap.invest.manageplans',
            componentId: 'PlansObjectPage',
            contextPath: '/Plans'
        },
        CustomPageDefinitions
    );
});