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

// function findPostsByID(userId, postId) {
//     return db("posts as p")
//         .innerJoin("users as u", "u.id", "p.user_id")
//         .where("user_id", userId)
//         .where("postId", postId)
//         .first("p.id", "p.contents", "u.username");
// }

module.exports = {
    find,
    findById,
    findSteps,
};
