using {investment.db as investment} from '../../db/model/investment/investment';
using { plan.db as plan } from '../../db/model/investment/plan';

service InvestmentService {
    @odata.draft.enabled
    entity Investments as projection on investment.Investments;
    entity Plans as projection on plan.Plans;
}

