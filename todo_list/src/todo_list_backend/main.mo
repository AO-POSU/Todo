import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {


  type Date = Text;
  type Todo = Text;

  type Entry = {
    list: Todo;
    description:Text;
  };

  //  Storing our data
  let TodoList = Map.HashMap<Date, Entry>(0, Text.equal, Text.hash);

  public func add_list(date_time : Date, entry : Entry): async () {
    TodoList.put(date_time, entry);
  };

  public query func check(date_time : Date) : async ? Entry {
    TodoList.get(date_time)
  };
};