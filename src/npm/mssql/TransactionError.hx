package npm.mssql;

import js.Error;

extern class TransactionError extends Error {
  public function new(message : String, code : Int);

  public var name : String;
  public var message : String;
  public var code : Int;
}
