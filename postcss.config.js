const env = process.env.NODE_ENV || "development";

const productionPlugins = [require("cssnano")];

module.exports = {
  plugins: [
    require("tailwindcss"),
    require("autoprefixer"),
    ...(env === "production" ? productionPlugins : []),
  ],
};
