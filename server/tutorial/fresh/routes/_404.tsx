// Custom 404 page

import { UnknownPageProps } from "$fresh/server.ts";

const NotFoundPage = ({ url }: UnknownPageProps) => {
  return <p>404 not found: {url.pathname}</p>;
};

export default NotFoundPage;
