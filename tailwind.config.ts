/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./public/**/*.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
    "./node_modules/tw-elements/dist/js/**/*.js",
  ],
  theme: {
    screens: {
      sm: "480px",
      md: "768px",
      lg: "976px",
      xl: "1440px",
    },
    extend: {
      // colors: {
      //   rallyCobalt: "#283f94",
      //   rallySky: "#b9e5fb",
      //   rallySunset: "#ef464e",
      //   rallySunrise: "#f99d31",
      //   rallyGlow: "#fff799",
      //   rallyCloudy: "#fffeee",
      //   baraBrown: "#3a3a3a",
      //   baraGold: "#b1906f",
      //   baraMaroon: "#981d3c",
      // },
      // fontFamily: {
      //   Caslon: ["CaslonGraD", "serif"],
      //   DejaVu: ["DejaVu", "Helvetica", "sans-serif"],
      //   GothamBold: ["GothamBold", "Helvetica", "sans-serif"],
      //   Gotham: ["Gotham", "Helvetica", "sans-serif"],
      // },
      maxWidth: {
        "1/4": "25%",
        "1/3": "33.33%",
        "1/2": "50%",
      },
    },
  },
};
