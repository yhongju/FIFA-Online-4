/**
 * Custom 500: Interal server err
 */

import { ErrorPageProps } from "$fresh/server.ts";

const Error500Page = ({ error }: ErrorPageProps) => (
  <p>500 internal error: {(error as Error).message}</p>
);

export default Error500Page;
