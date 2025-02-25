namespace investment.db;

using {
  cuid,
  managed
} from '@sap/cds/common';

using plan.db as plan from './plan';

entity Investments : cuid, managed {
  plan     : Association to one plan.Plans;
  status   : plan.Status;
  comments : String;
}