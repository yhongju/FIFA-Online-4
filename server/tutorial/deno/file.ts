// Get copy fucnction from deno built-in API
import { copy } from "https://deno.land/std@0.167.0/streams/copy.ts";

const fileNames = Deno.args;

for (const fileName of fileNames) {
  const file = await Deno.open(fileName);

  await copy(file, Deno.stdout);

  file.close();
}

/*
 * Running script example:
 * deno run --allow-read file.ts /etc/hosts
 */
