// backend/app/config/db.config.js
// Use MONGODB_URI in production (e.g. EC2) to override without code changes
module.exports = {
  url:
    process.env.MONGODB_URI ||
    "mongodb+srv://arshthakurs77_db_user:i9mo3SlJVKeaYdND@cluster0.wwkvdbt.mongodb.net/dd_db?retryWrites=true&w=majority"
};