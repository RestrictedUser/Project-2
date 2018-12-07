var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/habits", function(req, res) {
    db.habit.findAll({}).then(function(dbExamples) {
      res.json(dbExamples);
    });
  });

  //Get habits by id
  app.get("/api/habits/:id", function(req, res){
    db.habit.findAll({
      where: {
        id: req.params.id
      }
    }).then(function(dbExamples){
      res.json(dbExamples)
    });
  });


  // Create a new example
  app.post("/api/habits", function(req, res) {
    db.Habit.create(req.body).then(function(dbExample) {
      res.json(dbExample);
    });
  });

  // Delete an example by id
  app.delete("/api/habits/:id", function(req, res) {
    db.Habit.destroy({ where: { id: req.params.id } }).then(function(dbExample) {
      res.json(dbExample);
    });
  });
};
