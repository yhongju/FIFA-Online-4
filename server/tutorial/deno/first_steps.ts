const url = Deno.args[0]; // Get first arg passed to the app
const res = await fetch(url); // Request to the url

/*
 * Parse body as an ArrayBuffer
 * Await the response
 * Convert it
 */
const body = new Uint8Array(await res.arrayBuffer());
await Deno.stdout.write(body); // Write to stdout

console.log("Welcone to Deno!");
