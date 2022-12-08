// http://localhost:8888/search

// PageProps for default function's argument
import { Handlers, PageProps } from "$fresh/server.ts";

const NAMES = ["Alice", "Bob", "Charlie", "Dave", "Eve", "Frank"];

interface Data {
  query: string;
  results: string[];
}

export const handler: Handlers<Data> = {
  GET(req, ctx) {
    const url = new URL(req.url);
    const query = url.searchParams.get("q") || "";
    const results = NAMES.filter((name) => name.includes(query)); // includes: boolean

    return ctx.render({ results, query });
  },
};

export default function Page({ data }: PageProps<Data>) {
  const { results, query } = data;

  return (
    <div>
      <form>
        <input type="text" name="q" value={query} />
        <button type="submit">Search!</button>
      </form>
      <ul>
        {results.map((name) => (
          <li key={name}>
            {">"} {name}
          </li>
        ))}
      </ul>
    </div>
  );
}
