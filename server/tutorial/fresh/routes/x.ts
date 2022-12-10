/**
 * Match URL pattern to route configuration
 */

import { RouteConfig } from "$fresh/server.ts";

const config: RouteConfig = {
  routeOverride: "/x/:module@:version/:path*",
};

export default config;
