const models = require("../models/models");
const ApiError = require("../error/ApiError");
const { Op } = require("sequelize");
const calculateRatingController = require("./calculateRating.controllers");

class RatingCountController {
  async getAll(req, res) {
    const courseCount = await models.RatingCount.findAll({
      required: true,
      attributes: ["id", "count"],
      include: [
        {
          model: models.Courses,
          attributes: ["title"],
        },
        {
          model: models.DateTable,
          attributes: ["id", "date"],
          required: true,
          where: {
            date: {
              [Op.contains]: [
                { value: new Date(), inclusive: true },
                { value: new Date(), inclusive: true },
                //{ value: new Date(Date.UTC(2022, 7, 1)), inclusive: true },
                //{ value: new Date(Date.UTC(2023, 1, 31)), inclusive: true }
              ],
            },
          },
        },
      ],
    });

    return res.json(courseCount);
  }

  async update(req, res) {
    if (!req.body) return response.sendStatus(400);
    
    await RatingCountController.updateCountCourse("НИД",req.body.nidInput);
    await RatingCountController.updateCountCourse("УД",req.body.udInput);
    await RatingCountController.updateCountCourse("СД",req.body.sdInput);
    await RatingCountController.updateCountCourse("ОД",req.body.odInput);
    await RatingCountController.updateCountCourse("КТД",req.body.ktdInput);

    ///////////ПОСЛЕ ОБНОВЛЕНИЯ НАДО ПЕРЕРАСЧИТЫВАТЬ МЕСТА И ПОЛУЧАЮЩИХ////////////
    calculateRatingController.calculation();

    //console.log(JSON.stringify(courses, null, 2));
    res.send("ОК");
  }

  async getCountFromSad(req, res) {
    const list = await models.StudentsSAD.findAll({
      required: true,
      include: [
        {
          model: models.DateTable,
          attributes: ["id", "date"],
          required: true,
          where: {
            date: {
              [Op.contains]: [
                { value: new Date(), inclusive: true },
                { value: new Date(), inclusive: true },
                //{ value: new Date(Date.UTC(2022, 7, 1)), inclusive: true },
                //{ value: new Date(Date.UTC(2023, 1, 31)), inclusive: true }
              ],
            },
          },
        },
      ],
    });

    return res.json(list.length * 0.1);
  }
  static async updateCountCourse(title1,count1) {

    await models.RatingCount.update(
      {
        count: count1,
      },
      {
        include: [
          {
            model: models.Courses,
            where: {
              title: title1,
            },
          },
          {
            model: models.DateTable,
            required: true,
            where: {
              date: {
                [Op.contains]: [
                  { value: new Date(), inclusive: true },
                  { value: new Date(), inclusive: true },
                ],
              },
            },
          },
        ],
      },
    );
  }
}

module.exports = new RatingCountController();
