import { serve } from "https://deno.land/std@0.157.0/http/server.ts";

const port = 8080;

const handler = async (request: Request): Promise<Response> => {
  const resp = await fetch("https://api.github.com/users/denoland", { // GET req
    // The init object here has an headers object containing a
    // header that indicates what type of response we accept.
    // We're not specifying the method field since by default
    // fetch makes a GET request.
    headers: {
      accept: "application/json",
    },
  });

  return new Response(resp.body, { // Init object
    status: resp.status,
    headers: {
      "content-type": "application/json",
    },
  });
};

serve(handler);

/**
 * Running script example:
 * deno run --allow-net --allow-write http_server.ts
 *
 * Making GET request to that end-point curl script example
 * curl http://localhost:8000
 */
