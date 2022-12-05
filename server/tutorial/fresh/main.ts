/// <reference no-default-lib="true" />
/// <reference lib="dom" />
/// <reference lib="dom.iterable" />
/// <reference lib="dom.asynciterable" />
/// <reference lib="deno.ns" />

import { start } from "$fresh/server.ts";
import manifest from "./fresh.gen.ts";

import twindPlugin from "$fresh/plugins/twind.ts";
import twindConfig from "./twind.config.ts";

// Can change port or host
const port = 8888;
const host = "localhost";

// Original code without changing
// await start(manifest, { plugins: [twindPlugin(twindConfig)] });

await start(manifest, {
  plugins: [twindPlugin(twindConfig)],
  port: port,
  host: host,
});

/**
 * File description
 *
 * Production entry point
 * Link to Deno Deploy
 * Convention too
 */
