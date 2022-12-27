import { Options } from "$fresh/plugins/twind.ts";

export default {
  selfURL: import.meta.url,
  darkMode: false,
  theme: {
    extend: {
      colors: {
        palette: {
          light: "#F5F3FF",
          primary: "#7C3AED",
          dark: "#6D28D9",
        },
      },
    },
  },
} as Options;
