// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
module.exports = {
  content: [
    './js/**/*.js',
    '../lib/*_web.ex',
    '../lib/*_web/**/*.*ex'
  ],
  theme: {
    extend: {
      colors: {
        'primary': 'rgb(0, 199, 190)',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms')
  ]
}
