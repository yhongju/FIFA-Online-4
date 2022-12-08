export const handler: Handlers<any, { data: string }> = {
  GET(_req, ctx) {
    return new Response(`Middleware data is ${ctx.state.data}`);
  },
};
