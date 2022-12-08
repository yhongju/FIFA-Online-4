/**
 *  define multiple middlewares (all for the same route)
 *  by exporting an array of handlers instead of a single handler.
 */

import { MiddlewareHandlerContext } from "$fresh/server.ts";

export const handler = [
  async function middleware1(_: Request, ctx: MiddlewareHandlerContext) {
    // Do something

    return await ctx.next(); // Will invoke proper handler
  },
  async function middleware2(_: Request, ctx: MiddlewareHandlerContext) {
    // Do something

    return await ctx.next();
  },
];
