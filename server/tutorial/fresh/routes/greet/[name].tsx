/**
 * Dynamic routes
 *
 * In this case, /greet/:name
 */

// PageProps interface
import { PageProps } from "$fresh/server.ts";

export default function GreetPage(props: PageProps) {
  const { name } = props.params;

  return (
    <main>
      <p>Greetings to you, {name}!</p>
    </main>
  );
}
