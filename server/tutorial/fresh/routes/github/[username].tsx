// localhost:8888/github/[username]
// Example: Get userdata of GitHub by GitHub API

import { Handlers, PageProps } from "$fresh/server.ts";

interface User {
  login: string;
  name: string;
  avatar_url: string;
}

export const handler: Handlers<User | null> = {
  async GET(_, ctx) {
    // Get username from context
    const { username } = ctx.params;

    // Fetch synchronously
    const resp = await fetch(`https://api.github.com/users/${username}`);

    // 404 from GitHub API
    if (resp.status === 404) {
      return ctx.render(null); // Call render method with null argument
    }

    const user: User = await resp.json();

    return ctx.render(user); // user object as an argument
  },
};

export default function Page({ data }: PageProps<User | null>) {
  // null
  if (!data) {
    return <h1>User not found!</h1>;
  }

  return (
    <div>
      <img src={data.avatar_url} width={64} height={64} />
      <h1>{data.name}</h1>
      <p>{data.login}</p>
    </div>
  );
}
