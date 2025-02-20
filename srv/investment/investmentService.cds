using {investment.db as investment} from '../../db/model/investment/investment';

service investmentService {
    @odata.draft.enabled
    entity Investments as projection on investment.Investments;

}
