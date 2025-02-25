namespace plan.db;

using {
  cuid,
  managed
} from '@sap/cds/common';

type PlanType : String(50) enum {
  pension    = 'PENSION';
  house      = 'HOUSE'
};


type Status   : String(50) enum {
  new        = 'New';
  submitted  = 'SUB';
  inprogress = 'INPROG';
  completed  = 'COMPLETED';
}


entity Plans : managed {
  key ID   : String(20);
      name : String(50);
      desc : String;
}
