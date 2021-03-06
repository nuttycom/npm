package npm.sequelize;

import js.Promise;

extern class ModelInstance<T : ModelInstance<T>> {
  var createdAt : Date;
  var updatedAt : Date;

  var isNewRecord(default, null) : Bool;
  function Model() : Model<T>;
  var sequelize(default, null) : Sequelize;
  var isDeleted(default, null) : Bool;
  var values(default, null) : Dynamic;
  var isDirty(default, null) : Bool;
  var primaryKeyValues(default, null) : Dynamic;
  function getDataValue(key : String) : Dynamic;
  function setDataValue(key : String, value : Dynamic) : Void;
  @:overload(function(?options : { plain : Bool }) : Dynamic {})
  function get(key : String, ?options : { plain : Bool }) : Dynamic;
  function set(key : String, value : Dynamic, ?options : { ?raw : Bool, ?reset : Bool, ?include : {} }) : Dynamic;
  @:overload(function() : Array<Bool> {})
  function changed(key : String) : Bool;
  function previous(key : String) : Dynamic;
  //validate([options]) -> Promise<undefined|Errors.ValidationError> // TODO
  function save(?options : { ?fields : {}, ?silent : Bool, ?validate : Bool, ?transaction : Transaction }) : Promise<T>; // either ValidationError or ModelInstance
  function reload() : Promise<T>;
  function update(updated : Dynamic, options : Dynamic) : Promise<T>; // TODO
  function destroy(?options : ModelDestroyOptions) : Promise<Void>; // TODO
  //restore([options={}]) -> Promise<undefined> // TODO
  //increment(fields, [options]) -> Promise<this> // TODO
  //decrement(fields, [options]) -> Promise // TODO
  function equals(other : ModelInstance<T>) : Bool;
  function equalsOneOf(others : Array<ModelInstance<T>>) : Bool;
  function toJSON() : {};
}
