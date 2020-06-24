const db = require("../data/config");

function find() {
    return db("schemes").select("*");
}

function findById(id) {
    return db("schemes").where("id", id).select("*");
}

function findSteps(id) {
    return db("schemes as s")
        .join("steps as st", "st.scheme_id", "s.id")
        .where("s.id", id)
        .select("*");
}

function add(scheme) {
    return db("schemes").insert(scheme);
}

function update(changes, id) {
    return db("schemes").where("id", id).update(changes);
}

function remove(id) {
    return db("schemes").where("id", id).del();
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove,
};
