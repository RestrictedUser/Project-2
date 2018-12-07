module.exports = function(sequelize, DataTypes) {
  var Habit = sequelize.define("habit", {
    nameFirst: DataTypes.STRING,
    nameLast: DataTypes.STRING,
    habit: DataTypes.STRING,
    completion: DataTypes.BOOLEAN
  });
  return Habit;
};
