using { sap.bdt.srv.db as prof_exp } from '../../../db/src/profilingAndExploration/cds/profiling-exploration';
service CatalogService @(path:'/browse') {

  @readonly entity Books as SELECT from prof_exp.Books {*,
    author.name as author
    } excluding { createdBy, modifiedBy };

    action submitOrder (book:Books:ID, amount: Integer);
  }