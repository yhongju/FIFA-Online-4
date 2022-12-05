#!/usr/bin/env -S deno run -A --watch=static/,routes/

import dev from "$fresh/dev.ts";

await dev(import.meta.url, "./main.ts");

/**
 * File description
 *
 * Development entry point
 * Run this file to start project
 * Dosen't need to be called this name, but it's convention
 */
