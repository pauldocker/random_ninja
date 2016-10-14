create or replace package finance_random

as

  /** Random financial data generation.
  * @author Morten Egan
  * @version 0.0.1
  * @project RANDOM_NINJA
  */
  npg_version           varchar2(250) := '0.0.1';

  /** Return a random currency.
  * @author Morten Egan
  * @return varchar2 The currency randomly generated. By default it is the ISO code for the currency.
  */
  function r_currency (
    r_shortform         boolean         default true
  )
  return varchar2;

  /** Generate a curency pair.
  * @author Morten Egan
  * @return varchar2 The currency pair.
  */
  function r_currencypair (
    r_base_currency     varchar2        default null
    , r_quote_currency  varchar2        default null
  )
  return varchar2;

  /** Generate a random credit card type.
  * @author Morten Egan
  * @return varchar2 The credit card generated.
  */
  function r_creditcard (
    r_shortform         boolean         default true
  )
  return varchar2;

  /** Generate a random credit card number. Keeping in line with Luhn algorithm.
  * @author Morten Egan
  * @return number The generated credit card number.
  */
  function r_creditcardnum (
    r_creditcard        varchar2        default null
  )
  return number;

  /** Generate a random expiry date for a credit card.
  * @author Morten Egan
  * @return varchar2 The expiry generated in the form of MM/YYYY.
  */
  function r_expirydate (
    r_future            boolean         default true
  )
  return varchar2;

  /** Generate a random amount
  * @author Morten Egan
  * @return number The amount generated. Default is from 0 to 10000. specify differently if needed.
  */
  function r_amount (
    r_min               number        default 0
    , r_max             number        default 10000
    , r_precision       number        default 2
  )
  return number;

end finance_random;
/