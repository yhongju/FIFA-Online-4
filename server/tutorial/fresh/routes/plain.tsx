// localhost:8888/plain

import { HandlerContext, Handlers } from "$fresh/server.ts";

export const handler: Handlers = {
  // If not matched with method, returns 405
  GET(_req: Request, _ctx: HandlerContext) {
    return new Response("Hello world!");
  },
};
