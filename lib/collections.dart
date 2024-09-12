List<String> manipulateList(List<String> items) {
  items.add("Orange");
  items.remove("Banana");
  return items;
}

Set<String> manipulateSet(Set<String> items) {
  items.add("Yellow");
  items.remove("Green");
  return items;
}

Map<String, int> manipulateMap(Map<String, int> people) {
  people["Charlie"] = 35;
  people.remove("Bob");
  return people;
}
