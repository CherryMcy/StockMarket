const sayHello = require("../test.js/test");
describe("test sayHello", function () {
  it("is right", function () {
    expect(sayHello()).toEqual("hello world");
  });
});
