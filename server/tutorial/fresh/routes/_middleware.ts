import { MiddlewareHandlerContext } from "$fresh/server.ts";

interface State {
  data: string;
}

export async function handler(
  _: Request,
  ctx: MiddlewareHandlerContext<State>,
) {
  ctx.state.data = "Data string from _middleware.ts";

  /*
   * ctx.next() method:
   *
   * Used to trigger child handlers
   * It will invoke contextually proper specified handler
   */
  const resp = await ctx.next();
  resp.headers.set("server", "fresh server");

  // Final resp maybe
  return resp;
}
