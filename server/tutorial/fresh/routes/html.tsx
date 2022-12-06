// localhost:8888/html

import { HandlerContext, Handlers, PageProps } from "$fresh/server.ts";

export const handler: Handlers = {
  async GET(_req: Request, ctx: HandlerContext) {
    const resp = await ctx.render(); // Response | Promise<Response>

    resp.headers.set("X-Custom-Header", "Hello world");

    return resp;
  },
};

const Page = (props: PageProps) => (
  <div>You are on the page '{props.url.href}'.</div>
);

export default Page;
