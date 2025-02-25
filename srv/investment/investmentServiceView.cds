using {InvestmentService} from './investmentService';

annotate InvestmentService.Investments with @odata.draft.enabled;
annotate InvestmentService.Investments with @fiori.draft.enabled;

//Labels
annotate InvestmentService.Investments with {
    ID    @title: '{i18n>invID}';
    comments @title: '{i18n>comments}'
}

//Selection Fields
annotate InvestmentService.Investments with @(UI.SelectionFields: [
    ID,
    comments
]);



//Line Item
annotate InvestmentService.Investments with @(UI.LineItem: [
    {Value: ID},
    {Value: comments}
]);





// ObjectPage
annotate InvestmentService.Investments with @(UI: {
    Facets             : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>generalInfo}',
        ID    : 'generalInfo',
        Target: '@UI.FieldGroup#General',
    }],
    FieldGroup#General: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: ID},
            {Value: comments}
        ]

    },
});
