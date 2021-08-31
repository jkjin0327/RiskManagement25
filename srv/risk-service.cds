using { sap.ui.riskmanagement as my } from '../db/schema';

@path: 'service/risk'
service RiskService {
  entity Risks @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'RiskViewer25' ]
            },
            {
                grant : [ '*' ],
                to : [ 'RiskManager25' ]
            }
        ]) as projection on my.Risks;
    annotate Risks with @odata.draft.enabled; 
   entity Mitigations @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'RiskViewer25' ]
            },
            {
                grant : [ '*' ],
                to : [ 'RiskManager25' ]
            }
        ]) as projection on my.Mitigations;
    annotate Mitigations with @odata.draft.enabled;
  //entity BusinessPartners as projection on my.BusinessPartners; 

//view riskmit as
//select A.ID, A.title, A.owner, B.description
//from my.Risks as A inner join my.Mitigations as B
//on A.miti_id = B.ID; 

}

