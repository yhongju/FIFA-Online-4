// localhost:8888/myHandler

import { Handlers } from "$fresh/server.ts";

export const handler: Handlers<{ data: string }> = {
  GET(_, ctx) {
    // ctx.state.data has been already assigned
    return new Response(`Middleware data is ${ctx.state.data}`);
  },
};
